package com.android.ex.chips;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class e
  implements g
{
  private final ContentResolver a;
  private final n.e<Uri, byte[]> b;
  
  public e(ContentResolver paramContentResolver)
  {
    this.a = paramContentResolver;
    this.b = new n.e(20);
  }
  
  private void d(final r paramr, final Uri paramUri, final g.a parama)
  {
    new a(paramUri, paramr, parama).executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
  }
  
  public void a(r paramr, g.a parama)
  {
    Uri localUri = paramr.t();
    if (localUri != null)
    {
      byte[] arrayOfByte = (byte[])this.b.c(localUri);
      if (arrayOfByte != null)
      {
        paramr.A(arrayOfByte);
        if (parama != null) {
          parama.a();
        }
      }
      else
      {
        d(paramr, localUri, parama);
      }
    }
    else if (parama != null)
    {
      parama.c();
    }
  }
  
  class a
    extends AsyncTask<Void, Void, byte[]>
  {
    a(Uri paramUri, r paramr, g.a parama) {}
    
    protected byte[] a(Void... paramVarArgs)
    {
      paramVarArgs = e.b(e.this).query(paramUri, e.b.a, null, null, null);
      if (paramVarArgs != null) {
        try
        {
          if (paramVarArgs.moveToFirst())
          {
            byte[] arrayOfByte1 = paramVarArgs.getBlob(0);
            return arrayOfByte1;
          }
          paramVarArgs.close();
        }
        finally
        {
          paramVarArgs.close();
        }
      }
      try
      {
        paramVarArgs = e.b(e.this).openInputStream(paramUri);
        if (paramVarArgs != null)
        {
          byte[] arrayOfByte2 = new byte[16384];
          ByteArrayOutputStream localByteArrayOutputStream = new java/io/ByteArrayOutputStream;
          localByteArrayOutputStream.<init>();
          try
          {
            for (;;)
            {
              int i = paramVarArgs.read(arrayOfByte2);
              if (i == -1) {
                break;
              }
              localByteArrayOutputStream.write(arrayOfByte2, 0, i);
            }
            return localByteArrayOutputStream.toByteArray();
          }
          finally
          {
            paramVarArgs.close();
          }
        }
      }
      catch (IOException paramVarArgs)
      {
        label141:
        break label141;
      }
      return null;
    }
    
    protected void b(byte[] paramArrayOfByte)
    {
      paramr.A(paramArrayOfByte);
      if (paramArrayOfByte != null)
      {
        e.c(e.this).d(paramUri, paramArrayOfByte);
        paramArrayOfByte = parama;
        if (paramArrayOfByte != null) {
          paramArrayOfByte.b();
        }
      }
      else
      {
        paramArrayOfByte = parama;
        if (paramArrayOfByte != null) {
          paramArrayOfByte.c();
        }
      }
    }
  }
  
  private static class b
  {
    public static final String[] a = { "data15" };
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.ex.chips.e
 * JD-Core Version:    0.7.0.1
 */