import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_state.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_bloc.dart';
import 'package:tobeto_mobil/api/bloc/user_bloc/user_event.dart';
import 'package:tobeto_mobil/api/business/requests/user_requests/user_update_request.dart';
import 'package:tobeto_mobil/models/enums/talent_item.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class TalentBottomSheetWidget extends StatefulWidget {
  const TalentBottomSheetWidget({
    Key? key,
    required this.title,
    this.data,
  }) : super(key: key);

  final String title;
  final List<TalentItem>? data;

  @override
  State<TalentBottomSheetWidget> createState() =>
      _TalentBottomSheetWidgetState();
}

class _TalentBottomSheetWidgetState extends State<TalentBottomSheetWidget> {
  final items = TalentItem.values;
  List<TalentItem> itemsToAdd = [];

  @override
  void initState() {
    super.initState();
    if (widget.data != null) {
      itemsToAdd.addAll(widget.data!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              TextButton(
                onPressed: () {
                  if (itemsToAdd == widget.data) {
                    Navigator.of(context).pop();
                  }
                  final auth =
                      context.read<AuthBloc>().state as AuthStateLoggedIn;
                  context.read<UserBloc>().add(
                        UserEventUpdate(
                          request: UserUpdateRequest(
                            id: auth.user.uid,
                            talents: itemsToAdd,
                          ),
                        ),
                      );
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Kaydet",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
          Divider(
            color: Theme.of(context).dividerTheme.color,
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  color: buildColor(items[index]),
                  child: ListTile(
                    onTap: () => handleOnTap(items[index]),
                    title: Text(
                      items[index].toString(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Color buildColor(TalentItem item) {
    if (widget.data != null && widget.data!.contains(item) && itemsToAdd.contains(item)) {
      return TobetoLightColors.yesil;
    }
    if (itemsToAdd.contains(item)) {
      return TobetoLightColors.yesil;
    }
    return Theme.of(context).cardTheme.color!;
  }

  void handleOnTap(TalentItem item) {
    if (itemsToAdd.contains(item)) {
      setState(() {
        itemsToAdd.remove(item);
      });
    } else {
      setState(() {
        itemsToAdd.add(item);
      });
    }
  }
}
