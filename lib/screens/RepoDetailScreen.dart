
import 'package:flutter/material.dart';
import 'package:githubrepo/components/all.dart';
import 'package:githubrepo/constants/spacings.dart';
import 'package:githubrepo/constants/typography.dart';
import 'package:githubrepo/mocks/repositories_mock.dart';
import 'package:githubrepo/models/repository.dart';

class RepoDetailScreen extends StatefulWidget {
  const RepoDetailScreen({super.key});

  @override
  State<RepoDetailScreen> createState() => _RepoDetailScreenState();
}

class _RepoDetailScreenState extends State<RepoDetailScreen> {
  Repositories repositories = kRepositoriesMock;

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
       text: "Detalhes",
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center ,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomAvatar(
                avatarUrl:  repositories[1].owner?.avatar,
                radius: Spacings.xl,
                
              ),
              CustomText(
                text: '${repositories[1].name}',
                style: TypographyType.title,
              ),
               CustomText(
                text: '${repositories[1].owner?.login}',
                style: TypographyType.label,
              ),
            ],
          ),
        ),
      ),
    );
  }
}