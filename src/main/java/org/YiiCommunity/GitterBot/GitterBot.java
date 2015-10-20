package org.YiiCommunity.GitterBot;

public class GitterBot {

    /**
     * Settings Gitter REST & Streaming API
     */
    public static String gitterToken = "873b11943ff0bfc4e4c5d6989f96da616121d246"; //https://developer.gitter.im/apps
    public static String gitterRoomId = "56266df816b6c7089cb7a9a7";
    public static String idGitterBot = "562567a916b6c7089cb79037"; // curl -i -H "Accept: application/json" -H "Authorization: Bearer 33caf7e2c9953a0dcbd7b5745bd4569ff17cf566" "https://api.gitter.im/v1/user"

    public static String gitterRestUrl = "https://api.gitter.im/v1/";
    public static String gitterStreamingUrl = "https://stream.gitter.im/v1/rooms/";

    public static boolean debug = false;

    /**
     * @param args the command line arguments
     * @throws Exception
     */
    public GitterBot(String[] args) throws Exception {
        System.out.println("Yii Gitter Bot ... [START]");

        if (args.length > 0) {
            debug = true;
        }

        ChatListener gitter = new ChatListener();

        gitter.streaming();
    }

}