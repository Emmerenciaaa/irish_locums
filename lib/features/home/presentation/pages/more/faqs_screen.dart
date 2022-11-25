import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:irish_locums/features/availability/presentation/widgets/app_bar_container.dart';

class FaqsScreen extends StatefulWidget {
  const FaqsScreen({super.key});

  @override
  State<FaqsScreen> createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldColor,
        body: Stack(
          children: [
            const AppBarContainer(
              title: 'FAQs',
              subtitle: '',
              showBackIcon: true,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 144),
              child: SizedBox(
                height: double.infinity,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 17,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: const [
                          Gap(20),
                          FaqItems(
                            question: 'How does it work?',
                            answer:
                                'It is now easier than ever to work with IrishLocums. Browse our open positions or contact us to register your availability as a locum.',
                          ),
                          FaqItems(
                              question: 'What are my training costs?',
                              answer:
                                  'It is now easier than ever to work with IrishLocums. Browse our open positions or contact us to register your availability as a locum.'),
                          FaqItems(
                              question: 'Are my work placements compensated?',
                              answer: ''),
                          FaqItems(
                            question:
                                'How do I cancel a shift with IrishLocums?',
                            answer: '',
                          ),
                          FaqItems(
                              question: 'Is there a fee to hire a locum?',
                              answer: ''),
                          FaqItems(
                            question: 'Can I cancel a locum booking?',
                            answer: '',
                          ),
                          FaqItems(
                              question:
                                  'What is the procedure for IrishLocums?',
                              answer: ''),
                          FaqItems(
                            question: 'Who should I contact if I want to work?',
                            answer: '',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

class FaqItems extends StatefulWidget {
  const FaqItems({
    super.key,
    required this.question,
    required this.answer,
  });
  final String question;
  final String answer;
  @override
  State<FaqItems> createState() => _FaqItemsState();
}

bool showAnswers = false;

class _FaqItemsState extends State<FaqItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              showAnswers = !showAnswers;
            });
          },
          child: Container(
            height: 48,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextBody(
                      widget.question,
                      fontSize: 14,
                      color: AppColors.grey900,
                    ),
                  ),
                  showAnswers
                      ? const Icon(
                          Icons.keyboard_arrow_up,
                          size: 30,
                          color: AppColors.grey,
                        )
                      : const Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                          color: AppColors.grey,
                        ),
                ],
              ),
            ),
          ),
        ),
        showAnswers
            ? Container(
                height: 88,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.grey50,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 21,
                  ),
                  child: TextBody(
                    widget.answer,
                    fontSize: 12,
                    color: AppColors.textGrey,
                    maxLines: 50,
                  ),
                ),
              )
            : const SizedBox(),
        const Gap(16),
      ],
    );
  }
}
