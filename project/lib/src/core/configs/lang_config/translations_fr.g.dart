///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'translations.g.dart';

// Path: <root>
class TranslationsFr implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsFr _root = this; // ignore: unused_field

	@override 
	TranslationsFr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsFr(meta: meta ?? this.$meta);

	// Translations
	@override String welcome({required Object status}) => 'Salut mon ${status} 😉...';
	@override String welcomeInfo({required Object appName}) => '${appName} sera développé sous la base d\'un design pattern appelé CLEAN ARCHITECTURE et soutenu par le gestionnaire d\'état BLOC / CUBIT...';
	@override String get noConnection => 'Pas de connexion internet';
	@override String get timeError => 'Temps d\'éxécution dépassé';
	@override String get requestErrorTryAgain => 'Erreur de requête, Réessayer !';
	@override String get noContent => 'Aucun contenu';
	@override String get internalError => 'Erreur sur le serveur';
	@override String get cropImage => 'Trimmer l\'Image';
	@override String get noImageTake => 'Erreur durant la prise d\'image, Veuillez réessayer !';
	@override String get deviceError => 'Erreur au niveau de votre appareil';
	@override String get unknownError => 'Erreur inconnue';
	@override String get updateAvailable => 'Mise à jour disponible';
	@override String updateAvailableInfo({required Object appName}) => '${appName} vient d\'avoir une nouvelle version. Veuillez la mettre à jour pour profiter des dernières fonctionnalités et améliorations.';
	@override String get updateIt => 'Mettre à jour';
	@override String get updateIsDownloading => 'Téléchargement....';
	@override String get appRestart => 'Redémarrage de l\'application';
	@override String get restartMessage => 'L\'application va redémarrer pour appliquer les changements.';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsFr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'welcome': return ({required Object status}) => 'Salut mon ${status} 😉...';
			case 'welcomeInfo': return ({required Object appName}) => '${appName} sera développé sous la base d\'un design pattern appelé CLEAN ARCHITECTURE et soutenu par le gestionnaire d\'état BLOC / CUBIT...';
			case 'noConnection': return 'Pas de connexion internet';
			case 'timeError': return 'Temps d\'éxécution dépassé';
			case 'requestErrorTryAgain': return 'Erreur de requête, Réessayer !';
			case 'noContent': return 'Aucun contenu';
			case 'internalError': return 'Erreur sur le serveur';
			case 'cropImage': return 'Trimmer l\'Image';
			case 'noImageTake': return 'Erreur durant la prise d\'image, Veuillez réessayer !';
			case 'deviceError': return 'Erreur au niveau de votre appareil';
			case 'unknownError': return 'Erreur inconnue';
			case 'updateAvailable': return 'Mise à jour disponible';
			case 'updateAvailableInfo': return ({required Object appName}) => '${appName} vient d\'avoir une nouvelle version. Veuillez la mettre à jour pour profiter des dernières fonctionnalités et améliorations.';
			case 'updateIt': return 'Mettre à jour';
			case 'updateIsDownloading': return 'Téléchargement....';
			case 'appRestart': return 'Redémarrage de l\'application';
			case 'restartMessage': return 'L\'application va redémarrer pour appliquer les changements.';
			default: return null;
		}
	}
}

