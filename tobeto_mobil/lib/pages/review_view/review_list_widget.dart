//sertifikalarım içeriği
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_mobil/api/bloc/review_bloc/review_bloc.dart';
import 'package:tobeto_mobil/api/bloc/review_bloc/review_event.dart';
import 'package:tobeto_mobil/api/bloc/review_bloc/review_state.dart';
import 'package:tobeto_mobil/pages/review_view/reviews_card_widget.dart';

class ReviewListWidget extends StatelessWidget {
  const ReviewListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviewBloc, ReviewState>(builder: (context, state) {
      if (state is ReviewStateInitial) {
        context.watch<ReviewBloc>().add(const ReviewEventFetch());
        return const CircularProgressIndicator();
      } else if (state is ReviewStateLoading) {
        return const CircularProgressIndicator();
      } else if (state is ReviewStateLoaded) {
        return ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: state.reviews.length,
          itemBuilder: (context, index) {
            return ReviewsCard(
              reviewModel: state.reviews[index],
            );
          },
        );
      } else if (state is ReviewStateError) {
        return Center(
          child: Text(
            state.errorMessage,
            style: const TextStyle(color: Colors.red),
          ),
        );
      } else {
        return Center(
          child: Text(
            state.toString(),
            style: const TextStyle(color: Colors.red),
          ),
        );
      }
    });
  }
}
