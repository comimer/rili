package com.airbnb.lottie.parser.moshi;

import cc.e;
import cc.f;
import cc.g;
import cc.q;
import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;
import okio.ByteString;

public abstract class JsonReader
  implements Closeable
{
  private static final String[] g = new String[''];
  int a;
  int[] b = new int[32];
  String[] c = new String[32];
  int[] d = new int[32];
  boolean e;
  boolean f;
  
  static
  {
    for (int i = 0; i <= 31; i++) {
      g[i] = String.format("\\u%04x", new Object[] { Integer.valueOf(i) });
    }
    String[] arrayOfString = g;
    arrayOfString[34] = "\\\"";
    arrayOfString[92] = "\\\\";
    arrayOfString[9] = "\\t";
    arrayOfString[8] = "\\b";
    arrayOfString[10] = "\\n";
    arrayOfString[13] = "\\r";
    arrayOfString[12] = "\\f";
  }
  
  public static JsonReader V(g paramg)
  {
    return new b(paramg);
  }
  
  private static void h0(f paramf, String paramString)
    throws IOException
  {
    String[] arrayOfString = g;
    paramf.writeByte(34);
    int i = paramString.length();
    int j = 0;
    int n;
    for (int k = 0; j < i; k = n)
    {
      int m = paramString.charAt(j);
      String str2;
      if (m < 128)
      {
        String str1 = arrayOfString[m];
        str2 = str1;
        if (str1 == null)
        {
          n = k;
          break label133;
        }
      }
      else if (m == 8232)
      {
        str2 = "\\u2028";
      }
      else
      {
        n = k;
        if (m != 8233) {
          break label133;
        }
        str2 = "\\u2029";
      }
      if (k < j) {
        paramf.R(paramString, k, j);
      }
      paramf.J(str2);
      n = j + 1;
      label133:
      j++;
    }
    if (k < i) {
      paramf.R(paramString, k, i);
    }
    paramf.writeByte(34);
  }
  
  public abstract String E()
    throws IOException;
  
  public abstract String H()
    throws IOException;
  
  public abstract Token W()
    throws IOException;
  
  final void Z(int paramInt)
  {
    int i = this.a;
    Object localObject = this.b;
    if (i == localObject.length) {
      if (i != 256)
      {
        this.b = Arrays.copyOf((int[])localObject, localObject.length * 2);
        localObject = this.c;
        this.c = ((String[])Arrays.copyOf((Object[])localObject, localObject.length * 2));
        localObject = this.d;
        this.d = Arrays.copyOf((int[])localObject, localObject.length * 2);
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Nesting too deep at ");
        ((StringBuilder)localObject).append(getPath());
        throw new JsonDataException(((StringBuilder)localObject).toString());
      }
    }
    localObject = this.b;
    i = this.a;
    this.a = (i + 1);
    localObject[i] = paramInt;
  }
  
  public abstract int a0(a parama)
    throws IOException;
  
  public abstract void c0()
    throws IOException;
  
  public abstract void d()
    throws IOException;
  
  public abstract void d0()
    throws IOException;
  
  public abstract void e()
    throws IOException;
  
  public final String getPath()
  {
    return a.a(this.a, this.b, this.c, this.d);
  }
  
  final JsonEncodingException i0(String paramString)
    throws JsonEncodingException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append(" at path ");
    localStringBuilder.append(getPath());
    throw new JsonEncodingException(localStringBuilder.toString());
  }
  
  public abstract void j()
    throws IOException;
  
  public abstract void m()
    throws IOException;
  
  public abstract boolean q()
    throws IOException;
  
  public abstract boolean s()
    throws IOException;
  
  public abstract double x()
    throws IOException;
  
  public abstract int z()
    throws IOException;
  
  public static enum Token
  {
    static
    {
      Token localToken1 = new Token("BEGIN_ARRAY", 0);
      BEGIN_ARRAY = localToken1;
      Token localToken2 = new Token("END_ARRAY", 1);
      END_ARRAY = localToken2;
      Token localToken3 = new Token("BEGIN_OBJECT", 2);
      BEGIN_OBJECT = localToken3;
      Token localToken4 = new Token("END_OBJECT", 3);
      END_OBJECT = localToken4;
      Token localToken5 = new Token("NAME", 4);
      NAME = localToken5;
      Token localToken6 = new Token("STRING", 5);
      STRING = localToken6;
      Token localToken7 = new Token("NUMBER", 6);
      NUMBER = localToken7;
      Token localToken8 = new Token("BOOLEAN", 7);
      BOOLEAN = localToken8;
      Token localToken9 = new Token("NULL", 8);
      NULL = localToken9;
      Token localToken10 = new Token("END_DOCUMENT", 9);
      END_DOCUMENT = localToken10;
      $VALUES = new Token[] { localToken1, localToken2, localToken3, localToken4, localToken5, localToken6, localToken7, localToken8, localToken9, localToken10 };
    }
    
    private Token() {}
  }
  
  public static final class a
  {
    final String[] a;
    final q b;
    
    private a(String[] paramArrayOfString, q paramq)
    {
      this.a = paramArrayOfString;
      this.b = paramq;
    }
    
    public static a a(String... paramVarArgs)
    {
      try
      {
        ByteString[] arrayOfByteString = new ByteString[paramVarArgs.length];
        e locale = new cc/e;
        locale.<init>();
        for (int i = 0; i < paramVarArgs.length; i++)
        {
          JsonReader.c(locale, paramVarArgs[i]);
          locale.readByte();
          arrayOfByteString[i] = locale.c0();
        }
        paramVarArgs = new a((String[])paramVarArgs.clone(), q.o(arrayOfByteString));
        return paramVarArgs;
      }
      catch (IOException paramVarArgs)
      {
        throw new AssertionError(paramVarArgs);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.parser.moshi.JsonReader
 * JD-Core Version:    0.7.0.1
 */