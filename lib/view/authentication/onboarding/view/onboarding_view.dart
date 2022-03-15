import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:project_template/view/authentication/onboarding/model/onboarding_model.dart';
import 'package:project_template/view/authentication/onboarding/viewmodel/onboarding_viewmodel.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        showBackButton: false,
        showSkipButton: true,
        showNextButton: true,
        skip: const Text("Skip"),
        next: const Icon(Icons.navigate_next),
        pages: _pageList(),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600),),
        onDone: OnboardingViewmodel().onDone,
      ),
    );
  }

  List<PageViewModel> _pageList() {
    List<OnboardingModel> _modelList = [
      OnboardingModel('First Title', 'First description',
          'https://img.freepik.com/free-vector/computer-monitor-graphic-animator-creating-video-game-modeling-motion-processing-video-file-using-professional-editor-vector-illustration-graphic-design-art-designer-workplace-concept_74855-13038.jpg?w=740'),
      OnboardingModel('Second Title', 'Second description',
          'https://img.freepik.com/free-vector/customer-support-flat-illustration_23-2148892786.jpg?t=st=1647326876~exp=1647327476~hmac=8de201d48a1e1a593dab4a612c950eaf985ea148086b1568abe1703ed392cb8f&w=740'),
      OnboardingModel('Third Title', 'Third description',
          'https://img.freepik.com/free-vector/blogging-concept-illustration_114360-1038.jpg?t=st=1647326740~exp=1647327340~hmac=a303fc4427bc05d71471470c936bea61a431f1da89a219ab7dad5b2c6b2f19af&w=740'),
      OnboardingModel('Fourth Title', 'Fourth description',
          'https://img.freepik.com/free-vector/female-student-listening-webinar-online_74855-6461.jpg?t=st=1647326740~exp=1647327340~hmac=e6511fd1008eabc16ce4d938e69ad895d00fad4a32dc1bb22be87c8b91818219&w=826'),
      OnboardingModel('Fifth Title', 'Fifth description',
          'https://img.freepik.com/free-vector/design-community-concept-illustration_114360-1244.jpg?t=st=1647326996~exp=1647327596~hmac=2ce2ac1a7432045e9e3ab39fb35448429ae4c0ca2b5c5ae1dea1f006ad2cdbcd&w=740'),
    ];
    List<PageViewModel> _list = [];
    _modelList.forEach((model) {
      _list.add(
        PageViewModel(
          title: model.title,
          body: model.description,
          image: Center(
            child: Image.network(model.imagePath, height: 175.0),
          ),
        ),
      );
    });
    return _list;
  }
}
