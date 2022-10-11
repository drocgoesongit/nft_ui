import 'package:flutter/material.dart';
import 'package:nft_ui/components/nft_card.dart';

class RecentTab extends StatelessWidget {
  const RecentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCard(
      imagePath: 'assets/images/apiens_2.png',
    );
  }
}
