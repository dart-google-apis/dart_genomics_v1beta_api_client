library genomics_v1beta_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_genomics_v1beta_api/src/browser_client.dart';
import "package:google_genomics_v1beta_api/genomics_v1beta_api_client.dart";

/** Provides access to Genomics data. */
class Genomics extends Client with BrowserClient {

  /** OAuth Scope2: Manage your data in Google Cloud Storage */
  static const String DEVSTORAGE_READ_WRITE_SCOPE = "https://www.googleapis.com/auth/devstorage.read_write";

  /** OAuth Scope2: View and manage Genomics data */
  static const String GENOMICS_SCOPE = "https://www.googleapis.com/auth/genomics";

  final oauth.OAuth2 auth;

  Genomics([oauth.OAuth2 this.auth]);
}
