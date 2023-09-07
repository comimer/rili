package com.google.gson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

public final class JsonParser
{
  /* Error */
  public JsonElement parse(JsonReader paramJsonReader)
    throws JsonIOException, JsonSyntaxException
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 25	com/google/gson/stream/JsonReader:isLenient	()Z
    //   4: istore_2
    //   5: aload_1
    //   6: iconst_1
    //   7: invokevirtual 29	com/google/gson/stream/JsonReader:setLenient	(Z)V
    //   10: aload_1
    //   11: invokestatic 33	com/google/gson/internal/Streams:parse	(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
    //   14: astore_3
    //   15: aload_1
    //   16: iload_2
    //   17: invokevirtual 29	com/google/gson/stream/JsonReader:setLenient	(Z)V
    //   20: aload_3
    //   21: areturn
    //   22: astore_3
    //   23: goto +107 -> 130
    //   26: astore 4
    //   28: new 35	com/google/gson/JsonParseException
    //   31: astore_3
    //   32: new 37	java/lang/StringBuilder
    //   35: astore 5
    //   37: aload 5
    //   39: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   42: aload 5
    //   44: ldc 40
    //   46: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: pop
    //   50: aload 5
    //   52: aload_1
    //   53: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   56: pop
    //   57: aload 5
    //   59: ldc 49
    //   61: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: pop
    //   65: aload_3
    //   66: aload 5
    //   68: invokevirtual 53	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   71: aload 4
    //   73: invokespecial 56	com/google/gson/JsonParseException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   76: aload_3
    //   77: athrow
    //   78: astore 5
    //   80: new 35	com/google/gson/JsonParseException
    //   83: astore_3
    //   84: new 37	java/lang/StringBuilder
    //   87: astore 4
    //   89: aload 4
    //   91: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   94: aload 4
    //   96: ldc 40
    //   98: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: pop
    //   102: aload 4
    //   104: aload_1
    //   105: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   108: pop
    //   109: aload 4
    //   111: ldc 49
    //   113: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: pop
    //   117: aload_3
    //   118: aload 4
    //   120: invokevirtual 53	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   123: aload 5
    //   125: invokespecial 56	com/google/gson/JsonParseException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   128: aload_3
    //   129: athrow
    //   130: aload_1
    //   131: iload_2
    //   132: invokevirtual 29	com/google/gson/stream/JsonReader:setLenient	(Z)V
    //   135: aload_3
    //   136: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	137	0	this	JsonParser
    //   0	137	1	paramJsonReader	JsonReader
    //   4	128	2	bool	boolean
    //   14	7	3	localJsonElement	JsonElement
    //   22	1	3	localObject	Object
    //   31	105	3	localJsonParseException	JsonParseException
    //   26	46	4	localOutOfMemoryError	java.lang.OutOfMemoryError
    //   87	32	4	localStringBuilder1	java.lang.StringBuilder
    //   35	32	5	localStringBuilder2	java.lang.StringBuilder
    //   78	46	5	localStackOverflowError	java.lang.StackOverflowError
    // Exception table:
    //   from	to	target	type
    //   10	15	22	finally
    //   28	78	22	finally
    //   80	130	22	finally
    //   10	15	26	java/lang/OutOfMemoryError
    //   10	15	78	java/lang/StackOverflowError
  }
  
  public JsonElement parse(Reader paramReader)
    throws JsonIOException, JsonSyntaxException
  {
    try
    {
      JsonReader localJsonReader = new com/google/gson/stream/JsonReader;
      localJsonReader.<init>(paramReader);
      paramReader = parse(localJsonReader);
      if ((!paramReader.isJsonNull()) && (localJsonReader.peek() != JsonToken.END_DOCUMENT))
      {
        paramReader = new com/google/gson/JsonSyntaxException;
        paramReader.<init>("Did not consume the entire document.");
        throw paramReader;
      }
      return paramReader;
    }
    catch (NumberFormatException paramReader)
    {
      throw new JsonSyntaxException(paramReader);
    }
    catch (IOException paramReader)
    {
      throw new JsonIOException(paramReader);
    }
    catch (MalformedJsonException paramReader)
    {
      throw new JsonSyntaxException(paramReader);
    }
  }
  
  public JsonElement parse(String paramString)
    throws JsonSyntaxException
  {
    return parse(new StringReader(paramString));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.gson.JsonParser
 * JD-Core Version:    0.7.0.1
 */