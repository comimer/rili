package m2;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.util.Log;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class e
  implements a
{
  private static final String u = "e";
  private int[] a;
  private final int[] b = new int[256];
  private final a.a c;
  private ByteBuffer d;
  private byte[] e;
  private short[] f;
  private byte[] g;
  private byte[] h;
  private byte[] i;
  private int[] j;
  private int k;
  private c l;
  private Bitmap m;
  private boolean n;
  private int o;
  private int p;
  private int q;
  private int r;
  private Boolean s;
  private Bitmap.Config t = Bitmap.Config.ARGB_8888;
  
  public e(a.a parama)
  {
    this.c = parama;
    this.l = new c();
  }
  
  public e(a.a parama, c paramc, ByteBuffer paramByteBuffer, int paramInt)
  {
    this(parama);
    q(paramc, paramByteBuffer, paramInt);
  }
  
  private int i(int paramInt1, int paramInt2, int paramInt3)
  {
    int i1 = paramInt1;
    int i2 = 0;
    int i3 = i2;
    int i4 = i3;
    int i5 = i4;
    byte[] arrayOfByte;
    int i7;
    int i9;
    int i11;
    for (int i6 = i5; i1 < this.p + paramInt1; i6 = i7)
    {
      arrayOfByte = this.i;
      if ((i1 >= arrayOfByte.length) || (i1 >= paramInt2)) {
        break;
      }
      i7 = arrayOfByte[i1];
      int i8 = this.a[(i7 & 0xFF)];
      i9 = i2;
      i10 = i3;
      i11 = i4;
      i12 = i5;
      i7 = i6;
      if (i8 != 0)
      {
        i9 = i2 + (i8 >> 24 & 0xFF);
        i10 = i3 + (i8 >> 16 & 0xFF);
        i11 = i4 + (i8 >> 8 & 0xFF);
        i12 = i5 + (i8 & 0xFF);
        i7 = i6 + 1;
      }
      i1++;
      i2 = i9;
      i3 = i10;
      i4 = i11;
      i5 = i12;
    }
    int i10 = paramInt1 + paramInt3;
    paramInt1 = i10;
    int i12 = i2;
    while (paramInt1 < this.p + i10)
    {
      arrayOfByte = this.i;
      if ((paramInt1 >= arrayOfByte.length) || (paramInt1 >= paramInt2)) {
        break;
      }
      paramInt3 = arrayOfByte[paramInt1];
      i9 = this.a[(paramInt3 & 0xFF)];
      i11 = i12;
      i7 = i3;
      i1 = i4;
      i2 = i5;
      paramInt3 = i6;
      if (i9 != 0)
      {
        i11 = i12 + (i9 >> 24 & 0xFF);
        i7 = i3 + (i9 >> 16 & 0xFF);
        i1 = i4 + (i9 >> 8 & 0xFF);
        i2 = i5 + (i9 & 0xFF);
        paramInt3 = i6 + 1;
      }
      paramInt1++;
      i12 = i11;
      i3 = i7;
      i4 = i1;
      i5 = i2;
      i6 = paramInt3;
    }
    if (i6 == 0) {
      return 0;
    }
    return i12 / i6 << 24 | i3 / i6 << 16 | i4 / i6 << 8 | i5 / i6;
  }
  
  private void j(b paramb)
  {
    int[] arrayOfInt1 = this.j;
    int i1 = paramb.d;
    int i2 = this.p;
    int i3 = i1 / i2;
    int i4 = paramb.b / i2;
    int i5 = paramb.c / i2;
    int i6 = paramb.a / i2;
    int i7;
    if (this.k == 0) {
      i7 = 1;
    } else {
      i7 = 0;
    }
    int i8 = this.r;
    int i9 = this.q;
    byte[] arrayOfByte = this.i;
    int[] arrayOfInt2 = this.a;
    Object localObject1 = this.s;
    int i10 = 8;
    int i11 = 0;
    int i12 = 0;
    int i15;
    for (i1 = 1; i11 < i3; i1 = i15)
    {
      int i13;
      int i14;
      if (paramb.e)
      {
        if (i12 >= i3)
        {
          i1++;
          if (i1 != 2)
          {
            if (i1 != 3)
            {
              if (i1 == 4)
              {
                i12 = 1;
                i10 = 2;
              }
            }
            else
            {
              i10 = 4;
              i12 = 2;
            }
          }
          else {
            i12 = 4;
          }
        }
        i13 = i12 + i10;
        i14 = i12;
        i15 = i1;
      }
      else
      {
        i14 = i11;
        i15 = i1;
        i13 = i12;
      }
      i12 = i14 + i4;
      if (i2 == 1) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      if (i12 < i9)
      {
        i14 = i12 * i8;
        int i16 = i14 + i6;
        i12 = i16 + i5;
        int i17 = i14 + i8;
        i14 = i12;
        if (i17 < i12) {
          i14 = i17;
        }
        i17 = i11 * i2 * paramb.c;
        if (i1 != 0)
        {
          i12 = i16;
          for (;;)
          {
            i1 = i4;
            localObject2 = localObject1;
            if (i12 >= i14) {
              break;
            }
            i1 = arrayOfInt2[(arrayOfByte[i17] & 0xFF)];
            if (i1 != 0)
            {
              arrayOfInt1[i12] = i1;
              localObject2 = localObject1;
            }
            else
            {
              localObject2 = localObject1;
              if (i7 != 0)
              {
                localObject2 = localObject1;
                if (localObject1 == null) {
                  localObject2 = Boolean.TRUE;
                }
              }
            }
            i17 += i2;
            i12++;
            localObject1 = localObject2;
          }
        }
        int i18 = i4;
        i12 = i16;
        i4 = i17;
        i1 = i5;
        i5 = i12;
        for (;;)
        {
          int i19 = i4;
          i12 = i18;
          localObject2 = localObject1;
          i4 = i1;
          if (i5 >= i14) {
            break;
          }
          i4 = i(i19, (i14 - i16) * i2 + i17, paramb.c);
          if (i4 != 0)
          {
            arrayOfInt1[i5] = i4;
            localObject2 = localObject1;
          }
          else
          {
            localObject2 = localObject1;
            if (i7 != 0)
            {
              localObject2 = localObject1;
              if (localObject1 == null) {
                localObject2 = Boolean.TRUE;
              }
            }
          }
          i4 = i19 + i2;
          i5++;
          localObject1 = localObject2;
        }
      }
      Object localObject2 = localObject1;
      i1 = i4;
      i4 = i5;
      i12 = i1;
      localObject1 = localObject2;
      i11++;
      i1 = i12;
      i5 = i4;
      i12 = i13;
      i4 = i1;
    }
    if (this.s == null)
    {
      boolean bool;
      if (localObject1 == null) {
        bool = false;
      } else {
        bool = ((Boolean)localObject1).booleanValue();
      }
      this.s = Boolean.valueOf(bool);
    }
  }
  
  private void k(b paramb)
  {
    Object localObject = paramb;
    int[] arrayOfInt1 = this.j;
    int i1 = ((b)localObject).d;
    int i2 = ((b)localObject).b;
    int i3 = ((b)localObject).c;
    int i4 = ((b)localObject).a;
    int i5;
    if (this.k == 0) {
      i5 = 1;
    } else {
      i5 = 0;
    }
    int i6 = this.r;
    localObject = this.i;
    int[] arrayOfInt2 = this.a;
    int i7 = 0;
    int i8 = -1;
    while (i7 < i1)
    {
      int i9 = (i7 + i2) * i6;
      int i10 = i9 + i4;
      int i11 = i10 + i3;
      int i12 = i9 + i6;
      i9 = i11;
      if (i12 < i11) {
        i9 = i12;
      }
      i11 = paramb.c * i7;
      while (i10 < i9)
      {
        int i13 = localObject[i11];
        int i14 = i13 & 0xFF;
        i12 = i8;
        if (i14 != i8)
        {
          i12 = arrayOfInt2[i14];
          if (i12 != 0)
          {
            arrayOfInt1[i10] = i12;
            i12 = i8;
          }
          else
          {
            i12 = i13;
          }
        }
        i11++;
        i10++;
        i8 = i12;
      }
      i7++;
    }
    paramb = this.s;
    boolean bool;
    if (((paramb != null) && (paramb.booleanValue())) || ((this.s == null) && (i5 != 0) && (i8 != -1))) {
      bool = true;
    } else {
      bool = false;
    }
    this.s = Boolean.valueOf(bool);
  }
  
  private void l(b paramb)
  {
    Object localObject = this;
    if (paramb != null) {
      ((e)localObject).d.position(paramb.j);
    }
    if (paramb == null)
    {
      paramb = ((e)localObject).l;
      i1 = paramb.f;
      i2 = paramb.g;
    }
    else
    {
      i1 = paramb.c;
      i2 = paramb.d;
    }
    int i3 = i1 * i2;
    paramb = ((e)localObject).i;
    if ((paramb == null) || (paramb.length < i3)) {
      ((e)localObject).i = ((e)localObject).c.e(i3);
    }
    byte[] arrayOfByte1 = ((e)localObject).i;
    if (((e)localObject).f == null) {
      ((e)localObject).f = new short[4096];
    }
    short[] arrayOfShort = ((e)localObject).f;
    if (((e)localObject).g == null) {
      ((e)localObject).g = new byte[4096];
    }
    byte[] arrayOfByte2 = ((e)localObject).g;
    if (((e)localObject).h == null) {
      ((e)localObject).h = new byte[4097];
    }
    paramb = ((e)localObject).h;
    int i1 = p();
    int i4 = 1 << i1;
    int i5 = i4 + 2;
    int i6 = i1 + 1;
    int i7 = (1 << i6) - 1;
    int i8 = 0;
    for (i1 = 0; i1 < i4; i1++)
    {
      arrayOfShort[i1] = ((short)0);
      arrayOfByte2[i1] = ((byte)(byte)i1);
    }
    localObject = ((e)localObject).e;
    int i2 = i6;
    int i9 = i5;
    int i10 = i7;
    int i11 = 0;
    int i12 = i11;
    int i13 = i12;
    int i14 = i13;
    int i15 = i14;
    i1 = i15;
    int i16 = i1;
    int i17 = -1;
    int i18 = i15;
    i15 = i5;
    i5 = i6;
    while (i8 < i3)
    {
      i6 = i11;
      if (i11 == 0)
      {
        i6 = o();
        if (i6 <= 0)
        {
          this.o = 3;
          break;
        }
        i12 = 0;
      }
      i14 += ((localObject[i12] & 0xFF) << i13);
      int i19 = i12 + 1;
      int i20 = i6 - 1;
      i13 += 8;
      i12 = i17;
      i17 = i2;
      i11 = i8;
      i2 = i15;
      i15 = i1;
      i1 = i12;
      for (;;)
      {
        if (i13 < i17) {
          break label738;
        }
        i12 = i14 & i10;
        i14 >>= i17;
        i13 -= i17;
        if (i12 == i4)
        {
          i10 = i7;
          i17 = i5;
          i12 = i2;
          i1 = -1;
          i9 = i2;
          i2 = i12;
        }
        else
        {
          if (i12 == i4 + 1)
          {
            i6 = i15;
            i15 = i2;
            i2 = i17;
            i8 = i11;
            i11 = i20;
            i12 = i19;
            i17 = i1;
            i1 = i6;
            break;
          }
          if (i1 == -1)
          {
            arrayOfByte1[i18] = ((byte)arrayOfByte2[i12]);
            i18++;
            i11++;
            i1 = i12;
            i15 = i1;
          }
          else
          {
            if (i12 >= i9)
            {
              paramb[i16] = ((byte)(byte)i15);
              i15 = i16 + 1;
              i16 = i1;
            }
            else
            {
              i8 = i12;
              i15 = i16;
            }
            for (i16 = i8; i16 >= i4; i16 = arrayOfShort[i16])
            {
              paramb[i15] = ((byte)arrayOfByte2[i16]);
              i15++;
            }
            int i21 = arrayOfByte2[i16] & 0xFF;
            int i22 = (byte)i21;
            arrayOfByte1[i18] = ((byte)i22);
            i16 = i15;
            for (;;)
            {
              i18++;
              i11++;
              if (i16 <= 0) {
                break;
              }
              i16--;
              arrayOfByte1[i18] = ((byte)paramb[i16]);
            }
            int i23 = i9;
            i6 = i17;
            i8 = i10;
            if (i9 < 4096)
            {
              arrayOfShort[i9] = ((short)(short)i1);
              arrayOfByte2[i9] = ((byte)i22);
              i1 = i9 + 1;
              i23 = i1;
              i6 = i17;
              i8 = i10;
              if ((i1 & i10) == 0)
              {
                i23 = i1;
                i6 = i17;
                i8 = i10;
                if (i1 < 4096)
                {
                  i6 = i17 + 1;
                  i8 = i10 + i1;
                  i23 = i1;
                }
              }
            }
            i1 = i12;
            i15 = i21;
            i9 = i23;
            i17 = i6;
            i10 = i8;
          }
        }
      }
      label738:
      i6 = i15;
      i15 = i2;
      i8 = i11;
      i11 = i20;
      i12 = i19;
      i2 = i17;
      i17 = i1;
      i1 = i6;
    }
    Arrays.fill(arrayOfByte1, i18, i3, (byte)0);
  }
  
  private Bitmap n()
  {
    Object localObject = this.s;
    if ((localObject != null) && (!((Boolean)localObject).booleanValue())) {
      localObject = this.t;
    } else {
      localObject = Bitmap.Config.ARGB_8888;
    }
    localObject = this.c.a(this.r, this.q, (Bitmap.Config)localObject);
    ((Bitmap)localObject).setHasAlpha(true);
    return localObject;
  }
  
  private int o()
  {
    int i1 = p();
    if (i1 <= 0) {
      return i1;
    }
    ByteBuffer localByteBuffer = this.d;
    localByteBuffer.get(this.e, 0, Math.min(i1, localByteBuffer.remaining()));
    return i1;
  }
  
  private int p()
  {
    return this.d.get() & 0xFF;
  }
  
  private Bitmap r(b paramb1, b paramb2)
  {
    int[] arrayOfInt = this.j;
    int i1 = 0;
    Object localObject;
    if (paramb2 == null)
    {
      localObject = this.m;
      if (localObject != null) {
        this.c.c((Bitmap)localObject);
      }
      this.m = null;
      Arrays.fill(arrayOfInt, 0);
    }
    if ((paramb2 != null) && (paramb2.g == 3) && (this.m == null)) {
      Arrays.fill(arrayOfInt, 0);
    }
    if (paramb2 != null)
    {
      int i2 = paramb2.g;
      if (i2 > 0)
      {
        if (i2 == 2)
        {
          i2 = i1;
          if (!paramb1.f)
          {
            localObject = this.l;
            i2 = ((c)localObject).l;
            if ((paramb1.k != null) && (((c)localObject).j == paramb1.h)) {
              i2 = i1;
            }
          }
          i1 = paramb2.d;
          int i3 = this.p;
          int i4 = i1 / i3;
          i1 = paramb2.b / i3;
          int i5 = paramb2.c / i3;
          i3 = paramb2.a / i3;
          int i6 = this.r;
          int i7 = i1 * i6 + i3;
          i1 = i7;
          while (i1 < i4 * i6 + i7)
          {
            for (i3 = i1; i3 < i1 + i5; i3++) {
              arrayOfInt[i3] = i2;
            }
            i1 += this.r;
          }
        }
        if (i2 == 3)
        {
          paramb2 = this.m;
          if (paramb2 != null)
          {
            i1 = this.r;
            paramb2.getPixels(arrayOfInt, 0, i1, 0, 0, i1, this.q);
          }
        }
      }
    }
    l(paramb1);
    if ((!paramb1.e) && (this.p == 1)) {
      k(paramb1);
    } else {
      j(paramb1);
    }
    if (this.n)
    {
      i1 = paramb1.g;
      if ((i1 == 0) || (i1 == 1))
      {
        if (this.m == null) {
          this.m = n();
        }
        paramb1 = this.m;
        i1 = this.r;
        paramb1.setPixels(arrayOfInt, 0, i1, 0, 0, i1, this.q);
      }
    }
    paramb1 = n();
    i1 = this.r;
    paramb1.setPixels(arrayOfInt, 0, i1, 0, 0, i1, this.q);
    return paramb1;
  }
  
  public Bitmap a()
  {
    try
    {
      Object localObject2;
      if ((this.l.c <= 0) || (this.k < 0))
      {
        localObject1 = u;
        if (Log.isLoggable((String)localObject1, 3))
        {
          localObject2 = new java/lang/StringBuilder;
          ((StringBuilder)localObject2).<init>();
          ((StringBuilder)localObject2).append("Unable to decode frame, frameCount=");
          ((StringBuilder)localObject2).append(this.l.c);
          ((StringBuilder)localObject2).append(", framePointer=");
          ((StringBuilder)localObject2).append(this.k);
          Log.d((String)localObject1, ((StringBuilder)localObject2).toString());
        }
        this.o = 1;
      }
      int i1 = this.o;
      if ((i1 != 1) && (i1 != 2))
      {
        this.o = 0;
        if (this.e == null) {
          this.e = this.c.e(255);
        }
        b localb = (b)this.l.e.get(this.k);
        i1 = this.k - 1;
        if (i1 >= 0) {
          localObject2 = (b)this.l.e.get(i1);
        } else {
          localObject2 = null;
        }
        localObject1 = localb.k;
        if (localObject1 == null) {
          localObject1 = this.l.a;
        }
        this.a = ((int[])localObject1);
        if (localObject1 == null)
        {
          localObject2 = u;
          if (Log.isLoggable((String)localObject2, 3))
          {
            localObject1 = new java/lang/StringBuilder;
            ((StringBuilder)localObject1).<init>();
            ((StringBuilder)localObject1).append("No valid color table found for frame #");
            ((StringBuilder)localObject1).append(this.k);
            Log.d((String)localObject2, ((StringBuilder)localObject1).toString());
          }
          this.o = 1;
          return null;
        }
        if (localb.f)
        {
          System.arraycopy(localObject1, 0, this.b, 0, localObject1.length);
          localObject1 = this.b;
          this.a = ((int[])localObject1);
          localObject1[localb.h] = 0;
          if ((localb.g == 2) && (this.k == 0)) {
            this.s = Boolean.TRUE;
          }
        }
        localObject2 = r(localb, (b)localObject2);
        return localObject2;
      }
      Object localObject1 = u;
      if (Log.isLoggable((String)localObject1, 3))
      {
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        ((StringBuilder)localObject2).append("Unable to decode frame, status=");
        ((StringBuilder)localObject2).append(this.o);
        Log.d((String)localObject1, ((StringBuilder)localObject2).toString());
      }
      return null;
    }
    finally {}
  }
  
  public void b()
  {
    this.k = ((this.k + 1) % this.l.c);
  }
  
  public int c()
  {
    return this.l.c;
  }
  
  public void clear()
  {
    this.l = null;
    Object localObject = this.i;
    if (localObject != null) {
      this.c.d((byte[])localObject);
    }
    localObject = this.j;
    if (localObject != null) {
      this.c.f((int[])localObject);
    }
    localObject = this.m;
    if (localObject != null) {
      this.c.c((Bitmap)localObject);
    }
    this.m = null;
    this.d = null;
    this.s = null;
    localObject = this.e;
    if (localObject != null) {
      this.c.d((byte[])localObject);
    }
  }
  
  public int d()
  {
    if (this.l.c > 0)
    {
      int i1 = this.k;
      if (i1 >= 0) {
        return m(i1);
      }
    }
    return 0;
  }
  
  public void e(Bitmap.Config paramConfig)
  {
    if ((paramConfig != Bitmap.Config.ARGB_8888) && (paramConfig != Bitmap.Config.RGB_565))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unsupported format: ");
      localStringBuilder.append(paramConfig);
      localStringBuilder.append(", must be one of ");
      localStringBuilder.append(Bitmap.Config.ARGB_8888);
      localStringBuilder.append(" or ");
      localStringBuilder.append(Bitmap.Config.RGB_565);
      throw new IllegalArgumentException(localStringBuilder.toString());
    }
    this.t = paramConfig;
  }
  
  public void f()
  {
    this.k = -1;
  }
  
  public int g()
  {
    return this.k;
  }
  
  public ByteBuffer getData()
  {
    return this.d;
  }
  
  public int h()
  {
    return this.d.limit() + this.i.length + this.j.length * 4;
  }
  
  public int m(int paramInt)
  {
    if (paramInt >= 0)
    {
      c localc = this.l;
      if (paramInt < localc.c) {
        return ((b)localc.e.get(paramInt)).i;
      }
    }
    paramInt = -1;
    return paramInt;
  }
  
  public void q(c paramc, ByteBuffer paramByteBuffer, int paramInt)
  {
    if (paramInt > 0) {
      try
      {
        paramInt = Integer.highestOneBit(paramInt);
        this.o = 0;
        this.l = paramc;
        this.k = -1;
        paramByteBuffer = paramByteBuffer.asReadOnlyBuffer();
        this.d = paramByteBuffer;
        paramByteBuffer.position(0);
        this.d.order(ByteOrder.LITTLE_ENDIAN);
        this.n = false;
        paramByteBuffer = paramc.e.iterator();
        while (paramByteBuffer.hasNext()) {
          if (((b)paramByteBuffer.next()).g == 3) {
            this.n = true;
          }
        }
        this.p = paramInt;
        int i1 = paramc.f;
        this.r = (i1 / paramInt);
        int i2 = paramc.g;
        this.q = (i2 / paramInt);
        this.i = this.c.e(i1 * i2);
        this.j = this.c.b(this.r * this.q);
        return;
      }
      finally
      {
        break label214;
      }
    }
    paramByteBuffer = new java/lang/IllegalArgumentException;
    paramc = new java/lang/StringBuilder;
    paramc.<init>();
    paramc.append("Sample size must be >=0, not: ");
    paramc.append(paramInt);
    paramByteBuffer.<init>(paramc.toString());
    throw paramByteBuffer;
    label214:
    throw paramc;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m2.e
 * JD-Core Version:    0.7.0.1
 */