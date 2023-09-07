package f3;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;

public final class a
{
  private static final AtomicReference<byte[]> a = new AtomicReference();
  
  /* Error */
  public static ByteBuffer a(java.io.File paramFile)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aconst_null
    //   3: astore_2
    //   4: aload_0
    //   5: invokevirtual 31	java/io/File:length	()J
    //   8: lstore_3
    //   9: lload_3
    //   10: ldc2_w 32
    //   13: lcmp
    //   14: ifgt +76 -> 90
    //   17: lload_3
    //   18: lconst_0
    //   19: lcmp
    //   20: ifeq +58 -> 78
    //   23: new 35	java/io/RandomAccessFile
    //   26: astore 5
    //   28: aload 5
    //   30: aload_0
    //   31: ldc 37
    //   33: invokespecial 40	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   36: aload_2
    //   37: astore_0
    //   38: aload 5
    //   40: invokevirtual 44	java/io/RandomAccessFile:getChannel	()Ljava/nio/channels/FileChannel;
    //   43: astore_1
    //   44: aload_1
    //   45: astore_0
    //   46: aload_1
    //   47: getstatic 50	java/nio/channels/FileChannel$MapMode:READ_ONLY	Ljava/nio/channels/FileChannel$MapMode;
    //   50: lconst_0
    //   51: lload_3
    //   52: invokevirtual 56	java/nio/channels/FileChannel:map	(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    //   55: invokevirtual 62	java/nio/MappedByteBuffer:load	()Ljava/nio/MappedByteBuffer;
    //   58: astore_2
    //   59: aload_1
    //   60: invokevirtual 67	java/nio/channels/spi/AbstractInterruptibleChannel:close	()V
    //   63: aload 5
    //   65: invokevirtual 68	java/io/RandomAccessFile:close	()V
    //   68: aload_2
    //   69: areturn
    //   70: astore_2
    //   71: aload_0
    //   72: astore_1
    //   73: aload_2
    //   74: astore_0
    //   75: goto +31 -> 106
    //   78: new 25	java/io/IOException
    //   81: astore_0
    //   82: aload_0
    //   83: ldc 70
    //   85: invokespecial 73	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   88: aload_0
    //   89: athrow
    //   90: new 25	java/io/IOException
    //   93: astore_0
    //   94: aload_0
    //   95: ldc 75
    //   97: invokespecial 73	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   100: aload_0
    //   101: athrow
    //   102: astore_0
    //   103: aconst_null
    //   104: astore 5
    //   106: aload_1
    //   107: ifnull +7 -> 114
    //   110: aload_1
    //   111: invokevirtual 67	java/nio/channels/spi/AbstractInterruptibleChannel:close	()V
    //   114: aload 5
    //   116: ifnull +8 -> 124
    //   119: aload 5
    //   121: invokevirtual 68	java/io/RandomAccessFile:close	()V
    //   124: aload_0
    //   125: athrow
    //   126: astore_0
    //   127: goto -64 -> 63
    //   130: astore_0
    //   131: goto -63 -> 68
    //   134: astore_1
    //   135: goto -21 -> 114
    //   138: astore 5
    //   140: goto -16 -> 124
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	143	0	paramFile	java.io.File
    //   1	110	1	localObject1	Object
    //   134	1	1	localIOException1	IOException
    //   3	66	2	localMappedByteBuffer	java.nio.MappedByteBuffer
    //   70	4	2	localObject2	Object
    //   8	44	3	l	long
    //   26	94	5	localRandomAccessFile	java.io.RandomAccessFile
    //   138	1	5	localIOException2	IOException
    // Exception table:
    //   from	to	target	type
    //   38	44	70	finally
    //   46	59	70	finally
    //   4	9	102	finally
    //   23	36	102	finally
    //   78	90	102	finally
    //   90	102	102	finally
    //   59	63	126	java/io/IOException
    //   63	68	130	java/io/IOException
    //   110	114	134	java/io/IOException
    //   119	124	138	java/io/IOException
  }
  
  public static ByteBuffer b(InputStream paramInputStream)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(16384);
    byte[] arrayOfByte1 = (byte[])a.getAndSet(null);
    byte[] arrayOfByte2 = arrayOfByte1;
    if (arrayOfByte1 == null) {
      arrayOfByte2 = new byte[16384];
    }
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte2);
      if (i < 0) {
        break;
      }
      localByteArrayOutputStream.write(arrayOfByte2, 0, i);
    }
    a.set(arrayOfByte2);
    paramInputStream = localByteArrayOutputStream.toByteArray();
    return (ByteBuffer)ByteBuffer.allocateDirect(paramInputStream.length).put(paramInputStream).position(0);
  }
  
  private static b c(ByteBuffer paramByteBuffer)
  {
    if ((!paramByteBuffer.isReadOnly()) && (paramByteBuffer.hasArray())) {
      return new b(paramByteBuffer.array(), paramByteBuffer.arrayOffset(), paramByteBuffer.limit());
    }
    return null;
  }
  
  public static byte[] d(ByteBuffer paramByteBuffer)
  {
    Object localObject = c(paramByteBuffer);
    if ((localObject != null) && (((b)localObject).a == 0) && (((b)localObject).b == ((b)localObject).c.length))
    {
      paramByteBuffer = paramByteBuffer.array();
    }
    else
    {
      localObject = paramByteBuffer.asReadOnlyBuffer();
      paramByteBuffer = new byte[((Buffer)localObject).limit()];
      ((ByteBuffer)localObject).position(0);
      ((ByteBuffer)localObject).get(paramByteBuffer);
    }
    return paramByteBuffer;
  }
  
  /* Error */
  public static void e(ByteBuffer paramByteBuffer, java.io.File paramFile)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_0
    //   2: invokevirtual 120	java/nio/ByteBuffer:position	(I)Ljava/nio/Buffer;
    //   5: pop
    //   6: aconst_null
    //   7: astore_2
    //   8: aconst_null
    //   9: astore_3
    //   10: new 35	java/io/RandomAccessFile
    //   13: astore 4
    //   15: aload 4
    //   17: aload_1
    //   18: ldc 165
    //   20: invokespecial 40	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   23: aload_3
    //   24: astore_1
    //   25: aload 4
    //   27: invokevirtual 44	java/io/RandomAccessFile:getChannel	()Ljava/nio/channels/FileChannel;
    //   30: astore_2
    //   31: aload_2
    //   32: astore_1
    //   33: aload_2
    //   34: aload_0
    //   35: invokevirtual 168	java/nio/channels/FileChannel:write	(Ljava/nio/ByteBuffer;)I
    //   38: pop
    //   39: aload_2
    //   40: astore_1
    //   41: aload_2
    //   42: iconst_0
    //   43: invokevirtual 172	java/nio/channels/FileChannel:force	(Z)V
    //   46: aload_2
    //   47: astore_1
    //   48: aload_2
    //   49: invokevirtual 67	java/nio/channels/spi/AbstractInterruptibleChannel:close	()V
    //   52: aload_2
    //   53: astore_1
    //   54: aload 4
    //   56: invokevirtual 68	java/io/RandomAccessFile:close	()V
    //   59: aload_2
    //   60: invokevirtual 67	java/nio/channels/spi/AbstractInterruptibleChannel:close	()V
    //   63: aload 4
    //   65: invokevirtual 68	java/io/RandomAccessFile:close	()V
    //   68: return
    //   69: astore_0
    //   70: aload_1
    //   71: astore_2
    //   72: aload 4
    //   74: astore_1
    //   75: goto +6 -> 81
    //   78: astore_0
    //   79: aconst_null
    //   80: astore_1
    //   81: aload_2
    //   82: ifnull +7 -> 89
    //   85: aload_2
    //   86: invokevirtual 67	java/nio/channels/spi/AbstractInterruptibleChannel:close	()V
    //   89: aload_1
    //   90: ifnull +7 -> 97
    //   93: aload_1
    //   94: invokevirtual 68	java/io/RandomAccessFile:close	()V
    //   97: aload_0
    //   98: athrow
    //   99: astore_0
    //   100: goto -37 -> 63
    //   103: astore_0
    //   104: goto -36 -> 68
    //   107: astore_2
    //   108: goto -19 -> 89
    //   111: astore_1
    //   112: goto -15 -> 97
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	115	0	paramByteBuffer	ByteBuffer
    //   0	115	1	paramFile	java.io.File
    //   7	79	2	localObject1	Object
    //   107	1	2	localIOException	IOException
    //   9	15	3	localObject2	Object
    //   13	60	4	localRandomAccessFile	java.io.RandomAccessFile
    // Exception table:
    //   from	to	target	type
    //   25	31	69	finally
    //   33	39	69	finally
    //   41	46	69	finally
    //   48	52	69	finally
    //   54	59	69	finally
    //   10	23	78	finally
    //   59	63	99	java/io/IOException
    //   63	68	103	java/io/IOException
    //   85	89	107	java/io/IOException
    //   93	97	111	java/io/IOException
  }
  
  public static InputStream f(ByteBuffer paramByteBuffer)
  {
    return new a(paramByteBuffer);
  }
  
  private static class a
    extends InputStream
  {
    private final ByteBuffer a;
    private int b = -1;
    
    a(ByteBuffer paramByteBuffer)
    {
      this.a = paramByteBuffer;
    }
    
    public int available()
    {
      return this.a.remaining();
    }
    
    public void mark(int paramInt)
    {
      try
      {
        this.b = this.a.position();
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    
    public boolean markSupported()
    {
      return true;
    }
    
    public int read()
    {
      if (!this.a.hasRemaining()) {
        return -1;
      }
      return this.a.get() & 0xFF;
    }
    
    public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      if (!this.a.hasRemaining()) {
        return -1;
      }
      paramInt2 = Math.min(paramInt2, available());
      this.a.get(paramArrayOfByte, paramInt1, paramInt2);
      return paramInt2;
    }
    
    public void reset()
      throws IOException
    {
      try
      {
        int i = this.b;
        if (i != -1)
        {
          this.a.position(i);
          return;
        }
        IOException localIOException = new java/io/IOException;
        localIOException.<init>("Cannot reset to unset mark position");
        throw localIOException;
      }
      finally {}
    }
    
    public long skip(long paramLong)
      throws IOException
    {
      if (!this.a.hasRemaining()) {
        return -1L;
      }
      paramLong = Math.min(paramLong, available());
      ByteBuffer localByteBuffer = this.a;
      localByteBuffer.position((int)(localByteBuffer.position() + paramLong));
      return paramLong;
    }
  }
  
  static final class b
  {
    final int a;
    final int b;
    final byte[] c;
    
    b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      this.c = paramArrayOfByte;
      this.a = paramInt1;
      this.b = paramInt2;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f3.a
 * JD-Core Version:    0.7.0.1
 */