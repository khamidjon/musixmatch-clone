import 'package:elementary/elementary.dart';
import 'package:musixmatch_localization/strings.g.dart';

mixin IHelperWidgetModelMixin {
  StringsEn get tr;
}

mixin HelperWidgetModelMixin<W extends ElementaryWidget<IWidgetModel>,
        M extends ElementaryModel> on WidgetModel<W, M>
    implements IHelperWidgetModelMixin {
  @override
  StringsEn get tr => Translations.of(context);
}
