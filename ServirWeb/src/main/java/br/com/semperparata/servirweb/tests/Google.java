package br.com.semperparata.servirweb.tests;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.Collections;

import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken.Payload;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdTokenVerifier;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;

public class Google {

	private static String token = "eyJhbGciOiJSUzI1NiIsImtpZCI6IjE2NTg1ZTcxMjVlNGE0NmYwMmU2ZmEwZjBmYmY4NjNlMzRiMjg5MjIifQ.eyJhenAiOiI5MjkwOTc3MjY1NTMtazgxMGRocWFuZm1vcTFlajZydWNtOXB1MHB0Y2E5bmwuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI5MjkwOTc3MjY1NTMtazgxMGRocWFuZm1vcTFlajZydWNtOXB1MHB0Y2E5bmwuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDU3NjM2NDg2MDg4MDU1MDUwOTMiLCJlbWFpbCI6InRob21hc2xvaGF1c0BnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6IlM3WnM5RURTYlQzTGgtSDBQaGtBUnciLCJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiaWF0IjoxNTAwNjUyNDgxLCJleHAiOjE1MDA2NTYwODEsIm5hbWUiOiJUaG9tYXMgTG9oYXVzIiwicGljdHVyZSI6Imh0dHBzOi8vbGg2Lmdvb2dsZXVzZXJjb250ZW50LmNvbS8tNGQ4MTEtbldPbVUvQUFBQUFBQUFBQUkvQUFBQUFBQUFBSkUvWFRGVUxONC1wOGsvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6IlRob21hcyIsImZhbWlseV9uYW1lIjoiTG9oYXVzIiwibG9jYWxlIjoicHQifQ.O-Nm4fLlY621bnPpCs6PxpeFbS6km8hW87s9aOL-EFXUUDHg_k_3UTd82U-mbEGjws-7A9EvAvQOuo3qehJilAnwC91x_pGy9p86iCejOpi4pU1pk5wziD0NMFc0-ozhsb8dCZoUYp4Z8rY_BdxnQXXJ7Lk7jiGMtN7sO3zXF5BNzIWAFvzOaqldAfVrd_SeqK8zSmVN77orcnSIvWOIWu1ObGZOr5q9kewx3T739rTOyjv4Bn6YhzUgznBTirW0wmXLs9oYxptpwF-EKWGp-I3ykLpfV--rl2TIJb9kIbmUDyR19LAGNSYBx1w73GcnkuyCTzfRi5RjXT5oorK4gg";
	
	
	public static void main(String[] args) throws GeneralSecurityException, IOException {
		
		String CLIENT_ID = "929097726553-k810dhqanfmoq1ej6rucm9pu0ptca9nl.apps.googleusercontent.com";
		
		HttpTransport transport = GoogleNetHttpTransport.newTrustedTransport();
		JsonFactory jsonFactory = JacksonFactory.getDefaultInstance();
		
		GoogleIdTokenVerifier verifier = new GoogleIdTokenVerifier.Builder(transport, jsonFactory)
			    .setAudience(Collections.singletonList(CLIENT_ID))
			    // Or, if multiple clients access the backend:
			    //.setAudience(Arrays.asList(CLIENT_ID_1, CLIENT_ID_2, CLIENT_ID_3))
			    .build();	
	
		GoogleIdToken idToken = verifier.verify(token);
		
		if (idToken != null) {
			Payload payload = idToken.getPayload();

		  // Print user identifier
		  String userId = payload.getSubject();
		  System.out.println("User ID: " + userId);

		  // Get profile information from payload
		  String email = payload.getEmail();
		  boolean emailVerified = Boolean.valueOf(payload.getEmailVerified());
		  String name = (String) payload.get("name");
		  String pictureUrl = (String) payload.get("picture");
		  String locale = (String) payload.get("locale");
		  String familyName = (String) payload.get("family_name");
		  String givenName = (String) payload.get("given_name");
		  
		  System.out.println(email);
		  System.out.println(emailVerified);

	} else {
	  System.out.println("Invalid ID token.");
	}
	}
}
