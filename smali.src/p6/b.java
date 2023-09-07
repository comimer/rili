package p6;

import android.util.Base64;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.tencent.mm.opensdk.modelmsg.SendMessageToWX.Req;
import com.tencent.mm.opensdk.modelmsg.WXMediaMessage;
import com.tencent.mm.opensdk.modelmsg.WXMediaMessage.IMediaObject;
import com.tencent.mm.opensdk.modelmsg.WXMiniProgramObject;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import java.io.IOException;
import java.lang.reflect.Type;

public class b
{
  private static final String b = WXMiniProgramObject.class.getPackage().getName();
  private final IWXAPI a;
  
  public b(IWXAPI paramIWXAPI)
  {
    this.a = paramIWXAPI;
  }
  
  private static byte[] d(String paramString)
  {
    return Base64.decode(paramString, 0);
  }
  
  private static String e(byte[] paramArrayOfByte)
  {
    return Base64.encodeToString(paramArrayOfByte, 0);
  }
  
  private void f(String paramString1, String paramString2, SendMessageToWX.Req paramReq)
  {
    Object localObject = new GsonBuilder();
    ((GsonBuilder)localObject).registerTypeAdapter(WXMediaMessage.IMediaObject.class, new c(paramString1));
    ((GsonBuilder)localObject).registerTypeAdapter([B.class, new b(null));
    localObject = ((GsonBuilder)localObject).create();
    try
    {
      paramString2 = (WXMediaMessage)((Gson)localObject).fromJson(paramString2, WXMediaMessage.class);
      paramReq.message = paramString2;
      if ((paramString2 != null) && (paramString2.mediaObject != null) && (paramString2.mediaObject.checkArgs()))
      {
        boolean bool = this.a.sendReq(paramReq);
        paramString2 = new StringBuilder();
        paramString2.append("send weixin API +");
        paramString2.append(paramString1);
        paramString2.append("+ result ");
        paramString2.append(bool);
        com.xiaomi.accountsdk.utils.b.g("MiuiWeiXinApiHelper", paramString2.toString());
        return;
      }
      paramString2 = new StringBuilder();
      paramString2.append("failed to parse for ");
      paramString2.append(paramString1);
      com.xiaomi.accountsdk.utils.b.g("MiuiWeiXinApiHelper", paramString2.toString());
      return;
    }
    catch (JsonParseException paramString2)
    {
      paramString2 = new StringBuilder();
      paramString2.append("failed to parse for ");
      paramString2.append(paramString1);
      com.xiaomi.accountsdk.utils.b.g("MiuiWeiXinApiHelper", paramString2.toString());
    }
  }
  
  public void g(int paramInt, String paramString1, String paramString2)
  {
    if ((paramInt != 0) && (paramInt != 1) && (paramInt != 2))
    {
      paramString1 = new StringBuilder();
      paramString1.append("Share destination invalid ");
      paramString1.append(paramInt);
      throw new IllegalArgumentException(paramString1.toString());
    }
    SendMessageToWX.Req localReq = new SendMessageToWX.Req();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("transaction");
    localStringBuilder.append(System.currentTimeMillis());
    localReq.transaction = localStringBuilder.toString();
    localReq.scene = paramInt;
    f(paramString1, paramString2, localReq);
  }
  
  private static class b
    extends TypeAdapter<byte[]>
  {
    public byte[] a(JsonReader paramJsonReader)
      throws IOException
    {
      com.xiaomi.accountsdk.utils.b.g("MiuiWeiXinApiHelper", "ByteArrayTypeAdapter read");
      if (paramJsonReader.peek() == JsonToken.NULL)
      {
        paramJsonReader.nextNull();
        return null;
      }
      return b.c(paramJsonReader.nextString());
    }
    
    public void b(JsonWriter paramJsonWriter, byte[] paramArrayOfByte)
      throws IOException
    {
      com.xiaomi.accountsdk.utils.b.g("MiuiWeiXinApiHelper", "ByteArrayTypeAdapter write");
      if (paramArrayOfByte == null)
      {
        paramJsonWriter.nullValue();
        return;
      }
      paramJsonWriter.value(b.b(paramArrayOfByte));
    }
  }
  
  private static class c
    implements JsonSerializer<WXMediaMessage.IMediaObject>, JsonDeserializer<WXMediaMessage.IMediaObject>
  {
    private final String a;
    
    public c(String paramString)
    {
      this.a = paramString;
    }
    
    public WXMediaMessage.IMediaObject a(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
      throws JsonParseException
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("deserialize ");
      localStringBuilder.append(paramType);
      com.xiaomi.accountsdk.utils.b.g("MiuiWeiXinApiHelper", localStringBuilder.toString());
      try
      {
        if (this.a.startsWith(b.a()))
        {
          paramType = Class.forName(this.a);
        }
        else
        {
          paramType = new java/lang/StringBuilder;
          paramType.<init>();
          paramType.append(b.a());
          paramType.append(".");
          paramType.append(this.a);
          paramType = Class.forName(paramType.toString());
        }
        return (WXMediaMessage.IMediaObject)paramJsonDeserializationContext.deserialize(paramJsonElement, paramType);
      }
      catch (ClassNotFoundException paramJsonElement) {}
      return null;
    }
    
    public JsonElement b(WXMediaMessage.IMediaObject paramIMediaObject, Type paramType, JsonSerializationContext paramJsonSerializationContext)
    {
      return paramJsonSerializationContext.serialize(paramIMediaObject);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     p6.b
 * JD-Core Version:    0.7.0.1
 */