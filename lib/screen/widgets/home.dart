import 'package:flutter/material.dart';
class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        toolbarHeight: 0,
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: CustomScrollView(
        slivers: [const SliverAppBar(), 
        SliverList(delegate: delegate), 
        const SliverToBoxAdapter()],)
    )
  }
} 