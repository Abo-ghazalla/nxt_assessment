import 'package:flutter/material.dart';
import 'package:nxt_assessment/features/hotel_check_in/data/models/ticket_model.dart';
import 'package:nxt_assessment/utils/constants/app_strings.dart';
import 'package:nxt_assessment/utils/extensions/theme_extension.dart';
import 'package:nxt_assessment/widgets/custom_dotted_line.dart';

class TicketWidget extends StatelessWidget {
  final List<TicketModel> tickets;
  const TicketWidget(this.tickets, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.tickets,
          style: context.themeTextStyles().titleLarge,
        ),
        const SizedBox(height: 8),
        for (final ticket in tickets)
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            color: context.themeColors().darkGreyBackgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 14),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Container(
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white),
                          color: Colors.amber,
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(ticket.ticketUserData?.avatar ?? ""),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${ticket.ticketUserData?.firstName ?? ""} ${ticket.ticketUserData?.lastName ?? ""}",
                              style: context.themeTextStyles().titleLarge,
                            ),
                            const SizedBox(height: 2),
                            Text(
                              "#${ticket.ticketId}",
                              style: context.themeTextStyles().displayMedium,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const TicketDivider(),
                const SizedBox(height: 16),
                _TicketInfoItem(
                  title: AppStrings.ticketType,
                  subtitle: ticket.ticketTypeName ?? "",
                ),
                const SizedBox(height: 4),

                _TicketInfoItem(
                  title: AppStrings.seat,
                  subtitle: ticket.seat ?? "",
                ),
                const SizedBox(height: 14),
              ],
            ),
          ),
      ],
    );
  }
}

class TicketDivider extends StatelessWidget {
  const TicketDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          height: 14,
          child: CustomDottedLine(
            color: context.themeColors().blackInDarkWhiteInLight,
          ),
        ),
        Positioned(
          left: -7,
          child: Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.themeColors().blackInDarkWhiteInLight,
            ),
          ),
        ),
        Positioned(
          right: -7,
          child: Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.themeColors().blackInDarkWhiteInLight,
            ),
          ),
        ),
      ],
    );
  }
}

class _TicketInfoItem extends StatelessWidget {
  final String title;
  final String subtitle;
  const _TicketInfoItem({
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            "$title: ",
            style:
                context.themeTextStyles().displayMedium?.copyWith(color: context.themeColors().blackInLightWhiteInDark),
          ),
          Expanded(
            child: Text(
              subtitle,
              style: context
                  .themeTextStyles()
                  .displayMedium
                  ?.copyWith(color: context.themeColors().blackInLightWhiteInDark),
            ),
          ),
        ],
      ),
    );
  }
}
