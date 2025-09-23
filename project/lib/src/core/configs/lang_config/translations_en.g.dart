///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'translations.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final translate = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations

	/// en: 'Hi my {status} 😉...'
	String welcome({required Object status}) => 'Hi my ${status} 😉...';

	/// en: '{appName} will be developed on the basis of a design pattern called CLEAN ARCHITECTURE and supported by the BLOC / CUBIT state manager...'
	String welcomeInfo({required Object appName}) => '${appName} will be developed on the basis of a design pattern called CLEAN ARCHITECTURE and supported by the BLOC / CUBIT state manager...';

	/// en: 'No internet connection'
	String get noConnection => 'No internet connection';

	/// en: 'Execution time exceeded'
	String get timeError => 'Execution time exceeded';

	/// en: 'Request error, retry!'
	String get requestErrorTryAgain => 'Request error, retry!';

	/// en: 'No content'
	String get noContent => 'No content';

	/// en: 'Server error'
	String get internalError => 'Server error';

	/// en: 'Crop Image'
	String get cropImage => 'Crop Image';

	/// en: 'Error during image capture, please retry!'
	String get noImageTake => 'Error during image capture, please retry!';

	/// en: 'Device error'
	String get deviceError => 'Device error';

	/// en: 'Unknown error'
	String get unknownError => 'Unknown error';

	/// en: 'Update available'
	String get updateAvailable => 'Update available';

	/// en: 'A new version of {appName} is available on the store. Please update to the latest version.'
	String updateAvailableInfo({required Object appName}) => 'A new version of ${appName} is available on the store. Please update to the latest version.';

	/// en: 'Update'
	String get updateIt => 'Update';

	/// en: 'Update is downloading...'
	String get updateIsDownloading => 'Update is downloading...';

	/// en: 'App Restart'
	String get appRestart => 'App Restart';

	/// en: 'To complete the update, the application must restart. Do you want to restart it now?'
	String get restartMessage => 'To complete the update, the application must restart. Do you want to restart it now?';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'welcome': return ({required Object status}) => 'Hi my ${status} 😉...';
			case 'welcomeInfo': return ({required Object appName}) => '${appName} will be developed on the basis of a design pattern called CLEAN ARCHITECTURE and supported by the BLOC / CUBIT state manager...';
			case 'noConnection': return 'No internet connection';
			case 'timeError': return 'Execution time exceeded';
			case 'requestErrorTryAgain': return 'Request error, retry!';
			case 'noContent': return 'No content';
			case 'internalError': return 'Server error';
			case 'cropImage': return 'Crop Image';
			case 'noImageTake': return 'Error during image capture, please retry!';
			case 'deviceError': return 'Device error';
			case 'unknownError': return 'Unknown error';
			case 'updateAvailable': return 'Update available';
			case 'updateAvailableInfo': return ({required Object appName}) => 'A new version of ${appName} is available on the store. Please update to the latest version.';
			case 'updateIt': return 'Update';
			case 'updateIsDownloading': return 'Update is downloading...';
			case 'appRestart': return 'App Restart';
			case 'restartMessage': return 'To complete the update, the application must restart. Do you want to restart it now?';
			default: return null;
		}
	}
}

