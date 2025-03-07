import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme/theme_constant.dart';
import 'donor_personal_registration_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ThemeConstants.primaryRed,
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 7),
            constraints: const BoxConstraints(maxWidth: 480),
            child: Column(
              children: [
                _buildHeader(),
                _buildSearchBar(),
                _buildMainContent(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.network(
          'https://cdn.builder.io/api/v1/image/assets/TEMP/6c9c3b4b63b8affb512beaa7f48c515520bf17809a55fe2fbdb9a69d9278af15',
          width: 34,
          fit: BoxFit.contain,
        ),
        Row(
          children: [
            const Text('Marliya Tajdeen', style: ThemeConstants.usernameStyle),
            const SizedBox(width: 3),
            ClipRRect(
              borderRadius: BorderRadius.circular(13.5),
              child: Image.network(
                'https://cdn.builder.io/api/v1/image/assets/TEMP/22d6145f247d187fac3c2d2d236f963b2ccd15c229f073537c2c3d4fe253159d',
                width: 27,
                height: 27,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSearchBar() {
    return Container(
      margin: const EdgeInsets.only(top: 13),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      constraints: const BoxConstraints(maxWidth: 288),
      decoration: BoxDecoration(
        color: ThemeConstants.textWhite,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const Icon(Icons.search, size: 15),
          const SizedBox(width: 18),
          const Expanded(
            child: Text(
              'Search news',
              style: ThemeConstants.searchHintStyle,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainContent(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 19),
        padding: const EdgeInsets.fromLTRB(27, 28, 27, 10),
        decoration: BoxDecoration(
          color: ThemeConstants.textWhite,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            _buildAdvertisement(),
            const SizedBox(height: 20),
            _buildNewsGrid(),
            const SizedBox(height: 20),
            _buildRegisterButton(context),
            const Spacer(),
            _buildBottomNav(),
          ],
        ),
      ),
    );
  }

  Widget _buildAdvertisement() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: ThemeConstants.grayBackground,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: _launchURL2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5), // Optional: add rounded corners
              child: Image.network(
                'https://img.freepik.com/free-vector/flat-horizontal-sale-banner-template-world-health-day-celebration_23-2150227902.jpg',
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text('Support Life-Saving Donations!', style: ThemeConstants.advertisementStyle),
        ],
      ),
    );
  }

  Widget _buildNewsItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: _launchURL,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4cJbYFwqTcJzIP6u5EpeeJ3t-4W0CBfnGQQ&s',
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 12),

        // News Description
        Container(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 17),
          decoration: BoxDecoration(
            color: ThemeConstants.grayBackground,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Text(
            'Power impact of one donation',
            style: ThemeConstants.descriptionStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
  Widget _buildNewsGrid() {
    return Column(
      children: List.generate(1, (rowIndex) {
        return Padding(
          padding: EdgeInsets.only(bottom: rowIndex == 0 ? 31 : 0),
          child: Row(
            children: [
              Expanded(child: _buildNewsItem()),
              const SizedBox(width: 34),
              Expanded(child: _buildNewsItem()),
            ],
          ),
        );
      }),
    );
  }

  Future<void> _launchURL() async {
    final Uri url = Uri.parse(
        'https://www.pennmedicine.org/news/internal-newsletters/whats-new/2021/november/the-powerful-impact-of-one-donation');

    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
  Future<void> _launchURL2() async {
    final Uri url = Uri.parse(
        'https://drlisayoung.com/embrace-health-happiness-in-2021/#:~:text=As%20Ive%20discussed%20before,health%20and%20happiness%20are%20linked.)');

    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }





  Widget _buildRegisterButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DonorPersonalDetailRegistrationScreen()),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(top: 25),
        decoration: BoxDecoration(
          color: ThemeConstants.secondaryRed,
          borderRadius: BorderRadius.circular(25),
          boxShadow: const [
            BoxShadow(
              color: Color(0x40000000),
              blurRadius: 4,
              spreadRadius: 5,
            ),
          ],
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 13, horizontal: 45),
          child: Text(
            'Register now\nas Donor',
            style: ThemeConstants.registerButtonStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }


  Widget _buildBottomNav() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 10),
      decoration: BoxDecoration(
        color: ThemeConstants.grayBackground,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildNavItem(
            iconUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/53fad9cf2396b8ca283e221b48eea47418add5df8afbf0cca91b8bd488554d5b',
            isHome: true,
            onTap: () {
              // Navigate to first screen
            },
          ),
          _buildNavItem(
            iconUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/c21cd45ec2b02695f3ba0c93c50a29d64a16018c204b00f6f9364e1477eb3e8d',

            onTap: () {
              // Navigate to home screen
            },
          ),
          _buildNavItem(
            iconUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/5340eeb0aa53104a99d6b65fe04a319faaa4b093f6b4ee4091ab8dc17d45821b',
            onTap: () {
              // Navigate to third screen
            },
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({required String iconUrl, bool isHome = false, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: isHome ? const EdgeInsets.all(8) : EdgeInsets.zero,
        decoration: isHome
            ? BoxDecoration(
          color: ThemeConstants.primaryRed,
          shape: BoxShape.circle,
        )
            : null,
        child: Image.network(
          iconUrl,
          width: 30,
          height: 30,
          color: isHome ? Colors.white : null,
        ),
      ),
    );
  }
}
