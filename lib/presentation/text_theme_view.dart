import 'package:flutter/material.dart';
import 'package:ns_theme/utils/extensions/theme_extensions.dart';

import '../utils/const/const.dart';

class TextThemeView extends StatelessWidget {
  const TextThemeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.minWidth < phoneWidthBreakpoint) {
        return const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextThemeShowcase(),
                SizedBox(height: 8),
                PrimaryTextThemeShowcase(),
              ],
            ),
          ),
        );
      }
      return const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              AppTextThemeView(),
              SizedBox(height: 8),
              PrimaryTextThemeShowcase(),
            ],
          ),
        ),
      );
    });
  }
}

class AppTextThemeView extends StatelessWidget {
  const AppTextThemeView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).appTextTheme;

    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text('App TextTheme',
                  style: Theme.of(context).textTheme.titleMedium),
            ),
            const Divider(),
            Text(
              'Title 1 (${textTheme.title1.fontSize!.toStringAsFixed(0)})',
              style: textTheme.title1,
            ),
            Text(
              'Title 2 (${textTheme.title2.fontSize!.toStringAsFixed(0)})',
              style: textTheme.title2,
            ),
            Text(
              'Title 3 (${textTheme.title3.fontSize!.toStringAsFixed(0)})',
              style: textTheme.title3,
            ),
            Text(
              'Headline (${textTheme.headline.fontSize!.toStringAsFixed(0)})',
              style: textTheme.headline,
            ),
            Text(
              'Subheadline (${textTheme.subHeadline.fontSize!.toStringAsFixed(0)})',
              style: textTheme.subHeadline,
            ),
            Text(
              'Body Regular (${textTheme.bodyRegular.fontSize!.toStringAsFixed(0)})',
              style: textTheme.bodyRegular,
            ),
            Text(
              'Body Small (${textTheme.bodySmall.fontSize!.toStringAsFixed(0)})',
              style: textTheme.bodySmall,
            ),
            Text(
              'Body Bold (${textTheme.bodyBold.fontSize!.toStringAsFixed(0)})',
              style: textTheme.bodyBold,
            ),
            Text(
              'Body Small Bold (${textTheme.bodySmallBold.fontSize!.toStringAsFixed(0)})',
              style: textTheme.bodySmallBold,
            ),
            Text(
              'Caption (${textTheme.caption.fontSize!.toStringAsFixed(0)})',
              style: textTheme.caption,
            ),
            Text(
              'Button Large (${textTheme.buttonLarge.fontSize!.toStringAsFixed(0)})',
              style: textTheme.buttonLarge,
            ),
            Text(
              'Button Medium (${textTheme.buttonMedium.fontSize!.toStringAsFixed(0)})',
              style: textTheme.buttonMedium,
            ),
            Text(
              'Button Small (${textTheme.buttonSmall.fontSize!.toStringAsFixed(0)})',
              style: textTheme.buttonSmall,
            ),
          ],
        ),
      ),
    );
  }
}

class TextThemeShowcase extends StatelessWidget {
  const TextThemeShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text('Normal TextTheme',
                  style: Theme.of(context).textTheme.titleMedium),
            ),
            TextThemeColumnShowcase(textTheme: Theme.of(context).textTheme),
          ],
        ),
      ),
    );
  }
}

class PrimaryTextThemeShowcase extends StatelessWidget {
  const PrimaryTextThemeShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text('Primary TextTheme',
                  style: Theme.of(context).primaryTextTheme.titleMedium),
            ),
            TextThemeColumnShowcase(
                textTheme: Theme.of(context).primaryTextTheme),
          ],
        ),
      ),
    );
  }
}

class TextThemeColumnShowcase extends StatelessWidget {
  const TextThemeColumnShowcase({super.key, required this.textTheme});
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Font: ${textTheme.titleSmall!.fontFamily}',
            style:
                textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600)),
        Text(
          'Display Large '
          '(${textTheme.displayLarge!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.displayLarge,
        ),
        Text(
          'Display Medium '
          '(${textTheme.displayMedium!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.displayMedium,
        ),
        Text(
          'Display Small '
          '(${textTheme.displaySmall!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.displaySmall,
        ),
        const SizedBox(height: 12),
        Text(
          'Headline Large '
          '(${textTheme.headlineLarge!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.headlineLarge,
        ),
        Text(
          'Headline Medium '
          '(${textTheme.headlineMedium!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.headlineMedium,
        ),
        Text(
          'Headline Small '
          '(${textTheme.headlineSmall!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.headlineSmall,
        ),
        const SizedBox(height: 12),
        Text(
          'Title Large '
          '(${textTheme.titleLarge!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.titleLarge,
        ),
        Text(
          'Title Medium '
          '(${textTheme.titleMedium!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.titleMedium,
        ),
        Text(
          'Title Small '
          '(${textTheme.titleSmall!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.titleSmall,
        ),
        const SizedBox(height: 12),
        Text(
          'Body Large '
          '(${textTheme.bodyLarge!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.bodyLarge,
        ),
        Text(
          'Body Medium '
          '(${textTheme.bodyMedium!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.bodyMedium,
        ),
        Text(
          'Body Small '
          '(${textTheme.bodySmall!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.bodySmall,
        ),
        const SizedBox(height: 12),
        Text(
          'Label Large '
          '(${textTheme.labelLarge!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.labelLarge,
        ),
        Text(
          'Label Medium '
          '(${textTheme.labelMedium!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.labelMedium,
        ),
        Text(
          'Label Small '
          '(${textTheme.labelSmall!.fontSize!.toStringAsFixed(0)})',
          style: textTheme.labelSmall,
        ),
      ],
    );
  }
}
