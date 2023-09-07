package k0;

import android.database.AbstractCursor;
import android.database.AbstractWindowedCursor;
import android.database.Cursor;
import android.database.CursorWindow;
import android.os.CancellationSignal;
import androidx.room.RoomDatabase;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.spi.AbstractInterruptibleChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import l0.e;

public class c
{
  public static void a(l0.b paramb)
  {
    Object localObject1 = new ArrayList();
    Object localObject2 = paramb.M("SELECT name FROM sqlite_master WHERE type = 'trigger'");
    try
    {
      while (((Cursor)localObject2).moveToNext()) {
        ((List)localObject1).add(((Cursor)localObject2).getString(0));
      }
      ((Cursor)localObject2).close();
      Iterator localIterator = ((List)localObject1).iterator();
      while (localIterator.hasNext())
      {
        localObject1 = (String)localIterator.next();
        if (((String)localObject1).startsWith("room_fts_content_sync_"))
        {
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append("DROP TRIGGER IF EXISTS ");
          ((StringBuilder)localObject2).append((String)localObject1);
          paramb.k(((StringBuilder)localObject2).toString());
        }
      }
      return;
    }
    finally
    {
      ((Cursor)localObject2).close();
    }
  }
  
  public static Cursor b(RoomDatabase paramRoomDatabase, e parame, boolean paramBoolean, CancellationSignal paramCancellationSignal)
  {
    parame = paramRoomDatabase.query(parame, paramCancellationSignal);
    paramRoomDatabase = parame;
    if (paramBoolean)
    {
      paramRoomDatabase = parame;
      if ((parame instanceof AbstractWindowedCursor))
      {
        paramCancellationSignal = (AbstractWindowedCursor)parame;
        int i = paramCancellationSignal.getCount();
        int j;
        if (paramCancellationSignal.hasWindow()) {
          j = paramCancellationSignal.getWindow().getNumRows();
        } else {
          j = i;
        }
        paramRoomDatabase = parame;
        if (j < i) {
          paramRoomDatabase = b.a(paramCancellationSignal);
        }
      }
    }
    return paramRoomDatabase;
  }
  
  public static int c(File paramFile)
    throws IOException
  {
    IOException localIOException = null;
    Object localObject = localIOException;
    try
    {
      ByteBuffer localByteBuffer = ByteBuffer.allocate(4);
      localObject = localIOException;
      FileInputStream localFileInputStream = new java/io/FileInputStream;
      localObject = localIOException;
      localFileInputStream.<init>(paramFile);
      localObject = localIOException;
      paramFile = localFileInputStream.getChannel();
      localObject = paramFile;
      paramFile.tryLock(60L, 4L, true);
      localObject = paramFile;
      paramFile.position(60L);
      localObject = paramFile;
      if (paramFile.read(localByteBuffer) == 4)
      {
        localObject = paramFile;
        localByteBuffer.rewind();
        localObject = paramFile;
        int i = localByteBuffer.getInt();
        paramFile.close();
        return i;
      }
      localObject = paramFile;
      localIOException = new java/io/IOException;
      localObject = paramFile;
      localIOException.<init>("Bad database header, unable to read 4 bytes at offset 60");
      localObject = paramFile;
      throw localIOException;
    }
    finally
    {
      if (localObject != null) {
        ((AbstractInterruptibleChannel)localObject).close();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     k0.c
 * JD-Core Version:    0.7.0.1
 */