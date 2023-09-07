package com.miui.maml.util;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.nio.ShortBuffer;

public class GLUtils
{
  public static Buffer buildBuffer(byte[] paramArrayOfByte)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocateDirect(paramArrayOfByte.length);
    localByteBuffer.order(ByteOrder.nativeOrder());
    localByteBuffer.put(paramArrayOfByte);
    localByteBuffer.position(0);
    return localByteBuffer;
  }
  
  public static Buffer buildBuffer(char[] paramArrayOfChar)
  {
    Object localObject = ByteBuffer.allocateDirect(paramArrayOfChar.length);
    ((ByteBuffer)localObject).order(ByteOrder.nativeOrder());
    localObject = ((ByteBuffer)localObject).asCharBuffer();
    ((CharBuffer)localObject).put(paramArrayOfChar);
    ((CharBuffer)localObject).position(0);
    return localObject;
  }
  
  public static Buffer buildBuffer(double[] paramArrayOfDouble)
  {
    Object localObject = ByteBuffer.allocateDirect(paramArrayOfDouble.length * 8);
    ((ByteBuffer)localObject).order(ByteOrder.nativeOrder());
    localObject = ((ByteBuffer)localObject).asDoubleBuffer();
    ((DoubleBuffer)localObject).put(paramArrayOfDouble);
    ((DoubleBuffer)localObject).position(0);
    return localObject;
  }
  
  public static Buffer buildBuffer(float[] paramArrayOfFloat)
  {
    Object localObject = ByteBuffer.allocateDirect(paramArrayOfFloat.length * 4);
    ((ByteBuffer)localObject).order(ByteOrder.nativeOrder());
    localObject = ((ByteBuffer)localObject).asFloatBuffer();
    ((FloatBuffer)localObject).put(paramArrayOfFloat);
    ((FloatBuffer)localObject).position(0);
    return localObject;
  }
  
  public static Buffer buildBuffer(int[] paramArrayOfInt)
  {
    Object localObject = ByteBuffer.allocateDirect(paramArrayOfInt.length * 4);
    ((ByteBuffer)localObject).order(ByteOrder.nativeOrder());
    localObject = ((ByteBuffer)localObject).asIntBuffer();
    ((IntBuffer)localObject).put(paramArrayOfInt);
    ((IntBuffer)localObject).position(0);
    return localObject;
  }
  
  public static Buffer buildBuffer(long[] paramArrayOfLong)
  {
    Object localObject = ByteBuffer.allocateDirect(paramArrayOfLong.length * 8);
    ((ByteBuffer)localObject).order(ByteOrder.nativeOrder());
    localObject = ((ByteBuffer)localObject).asLongBuffer();
    ((LongBuffer)localObject).put(paramArrayOfLong);
    ((LongBuffer)localObject).position(0);
    return localObject;
  }
  
  public static Buffer buildBuffer(short[] paramArrayOfShort)
  {
    Object localObject = ByteBuffer.allocateDirect(paramArrayOfShort.length * 2);
    ((ByteBuffer)localObject).order(ByteOrder.nativeOrder());
    localObject = ((ByteBuffer)localObject).asShortBuffer();
    ((ShortBuffer)localObject).put(paramArrayOfShort);
    ((ShortBuffer)localObject).position(0);
    return localObject;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.GLUtils
 * JD-Core Version:    0.7.0.1
 */