package br.com.semperparata.servirweb.tests;

import com.dropbox.core.DbxException;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.v2.DbxClientV2;
import com.dropbox.core.v2.files.DbxUserFilesRequests;
import com.dropbox.core.v2.files.GetMetadataErrorException;
import com.dropbox.core.v2.files.ListFolderResult;
import com.dropbox.core.v2.files.Metadata;
import com.dropbox.core.v2.users.FullAccount;

public class DropB {

	private static final String ACCESS_TOKEN = "kiLGHYrqnjAAAAAAAAAADz001ouXSHKUKKblWENVJ7g5syukGIgRNC2o7_F9B__C";

	public static void main(String args[]) throws DbxException {
		// Create Dropbox client
		DbxRequestConfig config = new DbxRequestConfig("dropbox/java-tutorial");
		DbxClientV2 client = new DbxClientV2(config, ACCESS_TOKEN);

		FullAccount account = client.users().getCurrentAccount();
		System.out.println(account.getName().getDisplayName());

//		 client.files().move("/Teste1", "/ServirWeb/Teste1");

		DbxUserFilesRequests files = client.files();
		
		try {
			System.out.println(files.getMetadata("/ServirWeb/Teste12"));
		} catch (GetMetadataErrorException e){
            if (e.errorValue.isPath() && e.errorValue.getPathValue().isNotFound()) {
                System.out.println("File not found.");
            } else {
            	System.out.println("AAAAA");
                throw e;
            }
        }
		System.out.println(files.getMetadata("/ServirWeb/Teste1").getPathLower());
		System.out.println(files.getMetadata("/ServirWeb/Teste1").getName());
		
		ListFolderResult result = client.files().listFolder("/ServirWeb");
		while (true) {
			for (Metadata metadata : result.getEntries()) {
				System.out.println(metadata.getPathDisplay());
			}

			if (!result.getHasMore()) {
				break;
			}

			result = client.files().listFolderContinue(result.getCursor());
		}
	}
}
