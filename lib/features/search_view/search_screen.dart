import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_project_doctor/logic/search_cubit/search_cubit.dart';
import 'package:new_project_doctor/logic/search_cubit/search_state.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchCubit = BlocProvider.of<SearchCubit>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_alt),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: SearchBar(
              onChanged: (value) {
                searchCubit.performSearch(value);
              },
              hintText: 'Search for doctors, clinics, etc...',
              leading: const Icon(Icons.search),
            ),
          ),
          BlocBuilder<SearchCubit, SearchState>(
            builder: (context, state) {
              if (state is SearchLoadingState) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is SearchSuccessState) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: state.results.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(state.results[index]),
                      );
                    },
                  ),
                );
              } else if (state is SearchEmptyState) {
                return const Center(child: Text('No results found.'));
              } else if (state is SearchErrorState) {
                return Center(child: Text('Error: ${state.errorMessage}'));
              } else {
                return Container();
              }
            },
          )
        ],
      ),
    );
  }
}
