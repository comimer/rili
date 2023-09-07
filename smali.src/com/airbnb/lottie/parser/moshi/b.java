package com.airbnb.lottie.parser.moshi;

import cc.a0;
import cc.e;
import cc.g;
import java.io.EOFException;
import java.io.IOException;
import okio.ByteString;

final class b
  extends JsonReader
{
  private static final ByteString n = ByteString.encodeUtf8("'\\");
  private static final ByteString o = ByteString.encodeUtf8("\"\\");
  private static final ByteString p = ByteString.encodeUtf8("{}[]:, \n\t\r\f/\\;#=");
  private static final ByteString q = ByteString.encodeUtf8("\n\r");
  private static final ByteString r = ByteString.encodeUtf8("*/");
  private final g h;
  private final e i;
  private int j = 0;
  private long k;
  private int l;
  private String m;
  
  b(g paramg)
  {
    if (paramg != null)
    {
      this.h = paramg;
      this.i = paramg.h();
      Z(6);
      return;
    }
    throw new NullPointerException("source == null");
  }
  
  private void A0()
    throws IOException
  {
    long l1 = this.h.y(q);
    e locale = this.i;
    if (l1 != -1L) {
      l1 += 1L;
    } else {
      l1 = locale.size();
    }
    locale.skip(l1);
  }
  
  private void B0()
    throws IOException
  {
    long l1 = this.h.y(p);
    e locale = this.i;
    if (l1 == -1L) {
      l1 = locale.size();
    }
    locale.skip(l1);
  }
  
  private void l0()
    throws IOException
  {
    if (this.e) {
      return;
    }
    throw i0("Use JsonReader.setLenient(true) to accept malformed JSON");
  }
  
  private int p0()
    throws IOException
  {
    int[] arrayOfInt = this.b;
    int i1 = this.a;
    int i2 = arrayOfInt[(i1 - 1)];
    if (i2 == 1)
    {
      arrayOfInt[(i1 - 1)] = 2;
    }
    else if (i2 == 2)
    {
      i1 = s0(true);
      this.i.readByte();
      if (i1 != 44)
      {
        if (i1 != 59)
        {
          if (i1 == 93)
          {
            this.j = 4;
            return 4;
          }
          throw i0("Unterminated array");
        }
        l0();
      }
    }
    else
    {
      if ((i2 == 3) || (i2 == 5)) {
        break label475;
      }
      if (i2 == 4)
      {
        arrayOfInt[(i1 - 1)] = 5;
        i1 = s0(true);
        this.i.readByte();
        if (i1 != 58) {
          if (i1 == 61)
          {
            l0();
            if ((this.h.U(1L)) && (this.i.H(0L) == 62)) {
              this.i.readByte();
            }
          }
          else
          {
            throw i0("Expected ':'");
          }
        }
      }
      else if (i2 == 6)
      {
        arrayOfInt[(i1 - 1)] = 7;
      }
      else if (i2 == 7)
      {
        if (s0(false) == -1)
        {
          this.j = 18;
          return 18;
        }
        l0();
      }
      else
      {
        if (i2 == 8) {
          break label465;
        }
      }
    }
    i1 = s0(true);
    if (i1 != 34)
    {
      if (i1 != 39)
      {
        if ((i1 != 44) && (i1 != 59)) {
          if (i1 != 91)
          {
            if (i1 != 93)
            {
              if (i1 != 123)
              {
                i2 = v0();
                if (i2 != 0) {
                  return i2;
                }
                i2 = w0();
                if (i2 != 0) {
                  return i2;
                }
                if (r0(this.i.H(0L)))
                {
                  l0();
                  this.j = 10;
                  return 10;
                }
                throw i0("Expected value");
              }
              this.i.readByte();
              this.j = 1;
              return 1;
            }
            if (i2 == 1)
            {
              this.i.readByte();
              this.j = 4;
              return 4;
            }
          }
          else
          {
            this.i.readByte();
            this.j = 3;
            return 3;
          }
        }
        if ((i2 != 1) && (i2 != 2)) {
          throw i0("Unexpected value");
        }
        l0();
        this.j = 7;
        return 7;
      }
      l0();
      this.i.readByte();
      this.j = 8;
      return 8;
    }
    this.i.readByte();
    this.j = 9;
    return 9;
    label465:
    throw new IllegalStateException("JsonReader is closed");
    label475:
    arrayOfInt[(i1 - 1)] = 4;
    if (i2 == 5)
    {
      i1 = s0(true);
      this.i.readByte();
      if (i1 != 44)
      {
        if (i1 != 59)
        {
          if (i1 == 125)
          {
            this.j = 2;
            return 2;
          }
          throw i0("Unterminated object");
        }
        l0();
      }
    }
    i1 = s0(true);
    if (i1 != 34)
    {
      if (i1 != 39)
      {
        if (i1 != 125)
        {
          l0();
          if (r0((char)i1))
          {
            this.j = 14;
            return 14;
          }
          throw i0("Expected name");
        }
        if (i2 != 5)
        {
          this.i.readByte();
          this.j = 2;
          return 2;
        }
        throw i0("Expected name");
      }
      this.i.readByte();
      l0();
      this.j = 12;
      return 12;
    }
    this.i.readByte();
    this.j = 13;
    return 13;
  }
  
  private int q0(String paramString, JsonReader.a parama)
  {
    int i1 = parama.a.length;
    for (int i2 = 0; i2 < i1; i2++) {
      if (paramString.equals(parama.a[i2]))
      {
        this.j = 0;
        this.c[(this.a - 1)] = paramString;
        return i2;
      }
    }
    return -1;
  }
  
  private boolean r0(int paramInt)
    throws IOException
  {
    if ((paramInt != 9) && (paramInt != 10) && (paramInt != 12) && (paramInt != 13) && (paramInt != 32))
    {
      if (paramInt != 35)
      {
        if (paramInt == 44) {
          break label110;
        }
        if ((paramInt != 47) && (paramInt != 61))
        {
          if ((paramInt == 123) || (paramInt == 125) || (paramInt == 58)) {
            break label110;
          }
          if (paramInt == 59) {}
        }
      }
      switch (paramInt)
      {
      default: 
        return true;
      case 92: 
        l0();
      }
    }
    label110:
    return false;
  }
  
  private int s0(boolean paramBoolean)
    throws IOException
  {
    int i2;
    for (int i1 = 0;; i1 = i2)
    {
      g localg = this.h;
      i2 = i1 + 1;
      if (!localg.U(i2)) {
        break label207;
      }
      i1 = this.i.H(i1);
      if ((i1 != 10) && (i1 != 32) && (i1 != 13) && (i1 != 9))
      {
        this.i.skip(i2 - 1);
        if (i1 == 47)
        {
          if (!this.h.U(2L)) {
            return i1;
          }
          l0();
          i2 = this.i.H(1L);
          if (i2 != 42)
          {
            if (i2 != 47) {
              return i1;
            }
            this.i.readByte();
            this.i.readByte();
            A0();
            break;
          }
          this.i.readByte();
          this.i.readByte();
          if (z0()) {
            break;
          }
          throw i0("Unterminated comment");
        }
        if (i1 == 35)
        {
          l0();
          A0();
          break;
        }
        return i1;
      }
    }
    label207:
    if (!paramBoolean) {
      return -1;
    }
    throw new EOFException("End of input");
  }
  
  private String t0(ByteString paramByteString)
    throws IOException
  {
    long l1;
    Object localObject2;
    for (Object localObject1 = null;; localObject1 = localObject2)
    {
      l1 = this.h.y(paramByteString);
      if (l1 == -1L) {
        break label137;
      }
      if (this.i.H(l1) != 92) {
        break;
      }
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = new StringBuilder();
      }
      ((StringBuilder)localObject2).append(this.i.q0(l1));
      this.i.readByte();
      ((StringBuilder)localObject2).append(x0());
    }
    if (localObject1 == null)
    {
      paramByteString = this.i.q0(l1);
      this.i.readByte();
      return paramByteString;
    }
    localObject1.append(this.i.q0(l1));
    this.i.readByte();
    return localObject1.toString();
    label137:
    throw i0("Unterminated string");
  }
  
  private String u0()
    throws IOException
  {
    long l1 = this.h.y(p);
    String str;
    if (l1 != -1L) {
      str = this.i.q0(l1);
    } else {
      str = this.i.p0();
    }
    return str;
  }
  
  private int v0()
    throws IOException
  {
    int i1 = this.i.H(0L);
    String str1;
    String str2;
    if ((i1 != 116) && (i1 != 84))
    {
      if ((i1 != 102) && (i1 != 70))
      {
        if ((i1 != 110) && (i1 != 78)) {
          return 0;
        }
        i1 = 7;
        str1 = "null";
        str2 = "NULL";
      }
      else
      {
        i1 = 6;
        str1 = "false";
        str2 = "FALSE";
      }
    }
    else
    {
      i1 = 5;
      str1 = "true";
      str2 = "TRUE";
    }
    int i2 = str1.length();
    int i4;
    for (int i3 = 1; i3 < i2; i3 = i4)
    {
      g localg = this.h;
      i4 = i3 + 1;
      if (!localg.U(i4)) {
        return 0;
      }
      int i5 = this.i.H(i3);
      if ((i5 != str1.charAt(i3)) && (i5 != str2.charAt(i3))) {
        return 0;
      }
    }
    if ((this.h.U(i2 + 1)) && (r0(this.i.H(i2)))) {
      return 0;
    }
    this.i.skip(i2);
    this.j = i1;
    return i1;
  }
  
  private int w0()
    throws IOException
  {
    int i1 = 0;
    long l1 = 0L;
    int i3 = 1;
    int i4 = 0;
    int i5 = i4;
    int i6 = i5;
    int i2;
    for (;;)
    {
      g localg = this.h;
      int i7 = i4 + 1;
      if (localg.U(i7))
      {
        int i8 = this.i.H(i4);
        if (i8 == 43) {
          break label469;
        }
        if ((i8 == 69) || (i8 == 101)) {
          break label446;
        }
        if (i8 == 45) {
          break label413;
        }
        if (i8 == 46) {
          break label395;
        }
        if ((i8 >= 48) && (i8 <= 57))
        {
          long l2;
          if ((i5 != 1) && (i5 != 0))
          {
            if (i5 == 2)
            {
              if (l1 == 0L) {
                return i1;
              }
              l2 = 10L * l1 - (i8 - 48);
              i2 = l1 < -922337203685477580L;
              if ((i2 <= 0) && ((i2 != 0) || (l2 >= l1))) {
                i2 = 0;
              } else {
                i2 = 1;
              }
              i4 = i3 & i2;
              i8 = i5;
            }
            else
            {
              if (i5 == 3)
              {
                i2 = 0;
                i5 = 4;
                break label483;
              }
              if (i5 != 5)
              {
                i8 = i5;
                i4 = i3;
                l2 = l1;
                if (i5 != 6) {}
              }
              else
              {
                i2 = 0;
                i5 = 7;
                break label483;
              }
            }
          }
          else
          {
            l2 = -(i8 - 48);
            i8 = 2;
            i4 = i3;
          }
          i2 = 0;
          i5 = i8;
          i3 = i4;
          l1 = l2;
          break label483;
        }
        if (r0(i8)) {}
      }
      else
      {
        if ((i5 == 2) && (i3 != 0) && ((l1 != -9223372036854775808L) || (i6 != 0)) && ((l1 != 0L) || (i6 == 0)))
        {
          if (i6 == 0) {
            l1 = -l1;
          }
          this.k = l1;
          this.i.skip(i4);
          this.j = 16;
          return 16;
        }
        if ((i5 != 2) && (i5 != 4) && (i5 != 7)) {
          return 0;
        }
        this.l = i4;
        this.j = 17;
        return 17;
      }
      return 0;
      label395:
      i4 = 3;
      if (i5 == 2)
      {
        i5 = i4;
      }
      else
      {
        return i2;
        label413:
        i4 = 6;
        if (i5 == 0)
        {
          i5 = 1;
          i6 = 1;
        }
        else if (i5 == 5)
        {
          i5 = i4;
        }
        else
        {
          return i2;
          label446:
          if ((i5 != 2) && (i5 != 4)) {
            return i2;
          }
          i5 = 5;
          break label483;
          label469:
          i4 = 6;
          if (i5 != 5) {
            break;
          }
          i5 = i4;
        }
      }
      label483:
      i4 = i7;
    }
    return i2;
  }
  
  private char x0()
    throws IOException
  {
    if (this.h.U(1L))
    {
      int i1 = this.i.readByte();
      if ((i1 != 10) && (i1 != 34) && (i1 != 39) && (i1 != 47) && (i1 != 92))
      {
        if (i1 != 98)
        {
          if (i1 != 102)
          {
            if (i1 != 110)
            {
              if (i1 != 114)
              {
                if (i1 != 116)
                {
                  if (i1 != 117)
                  {
                    if (this.e) {
                      return (char)i1;
                    }
                    localStringBuilder = new StringBuilder();
                    localStringBuilder.append("Invalid escape sequence: \\");
                    localStringBuilder.append((char)i1);
                    throw i0(localStringBuilder.toString());
                  }
                  if (this.h.U(4L))
                  {
                    i1 = 0;
                    int i2 = 0;
                    int i3 = i2;
                    while (i1 < 4)
                    {
                      i2 = this.i.H(i1);
                      int i4 = (char)(i3 << 4);
                      if ((i2 >= 48) && (i2 <= 57))
                      {
                        i2 -= 48;
                        i2 = (char)(i4 + i2);
                      }
                      else
                      {
                        if ((i2 >= 97) && (i2 <= 102)) {
                          i2 -= 97;
                        }
                        for (;;)
                        {
                          i2 += 10;
                          break;
                          if ((i2 < 65) || (i2 > 70)) {
                            break label244;
                          }
                          i2 -= 65;
                        }
                      }
                      i1++;
                      i3 = i2;
                      continue;
                      label244:
                      localStringBuilder = new StringBuilder();
                      localStringBuilder.append("\\u");
                      localStringBuilder.append(this.i.q0(4L));
                      throw i0(localStringBuilder.toString());
                    }
                    this.i.skip(4L);
                    return i3;
                  }
                  StringBuilder localStringBuilder = new StringBuilder();
                  localStringBuilder.append("Unterminated escape sequence at path ");
                  localStringBuilder.append(getPath());
                  throw new EOFException(localStringBuilder.toString());
                }
                return '\t';
              }
              return '\r';
            }
            return '\n';
          }
          return '\f';
        }
        return '\b';
      }
      return (char)i1;
    }
    throw i0("Unterminated escape sequence");
  }
  
  private void y0(ByteString paramByteString)
    throws IOException
  {
    long l1;
    for (;;)
    {
      l1 = this.h.y(paramByteString);
      if (l1 == -1L) {
        break label61;
      }
      if (this.i.H(l1) != 92) {
        break;
      }
      this.i.skip(l1 + 1L);
      x0();
    }
    this.i.skip(l1 + 1L);
    return;
    label61:
    throw i0("Unterminated string");
  }
  
  private boolean z0()
    throws IOException
  {
    Object localObject = this.h;
    ByteString localByteString = r;
    long l1 = ((g)localObject).v(localByteString);
    boolean bool;
    if (l1 != -1L) {
      bool = true;
    } else {
      bool = false;
    }
    localObject = this.i;
    if (bool) {
      l1 += localByteString.size();
    } else {
      l1 = ((e)localObject).size();
    }
    ((e)localObject).skip(l1);
    return bool;
  }
  
  public String E()
    throws IOException
  {
    int i1 = this.j;
    int i2 = i1;
    if (i1 == 0) {
      i2 = p0();
    }
    if (i2 == 14)
    {
      localObject = u0();
    }
    else if (i2 == 13)
    {
      localObject = t0(o);
    }
    else if (i2 == 12)
    {
      localObject = t0(n);
    }
    else
    {
      if (i2 != 15) {
        break label94;
      }
      localObject = this.m;
    }
    this.j = 0;
    this.c[(this.a - 1)] = localObject;
    return localObject;
    label94:
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Expected a name but was ");
    ((StringBuilder)localObject).append(W());
    ((StringBuilder)localObject).append(" at path ");
    ((StringBuilder)localObject).append(getPath());
    throw new JsonDataException(((StringBuilder)localObject).toString());
  }
  
  public String H()
    throws IOException
  {
    int i1 = this.j;
    int i2 = i1;
    if (i1 == 0) {
      i2 = p0();
    }
    if (i2 == 10)
    {
      localObject = u0();
    }
    else if (i2 == 9)
    {
      localObject = t0(o);
    }
    else if (i2 == 8)
    {
      localObject = t0(n);
    }
    else if (i2 == 11)
    {
      localObject = this.m;
      this.m = null;
    }
    else if (i2 == 16)
    {
      localObject = Long.toString(this.k);
    }
    else
    {
      if (i2 != 17) {
        break label149;
      }
      localObject = this.i.q0(this.l);
    }
    this.j = 0;
    int[] arrayOfInt = this.d;
    i2 = this.a - 1;
    arrayOfInt[i2] += 1;
    return localObject;
    label149:
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Expected a string but was ");
    ((StringBuilder)localObject).append(W());
    ((StringBuilder)localObject).append(" at path ");
    ((StringBuilder)localObject).append(getPath());
    throw new JsonDataException(((StringBuilder)localObject).toString());
  }
  
  public JsonReader.Token W()
    throws IOException
  {
    int i1 = this.j;
    int i2 = i1;
    if (i1 == 0) {
      i2 = p0();
    }
    switch (i2)
    {
    default: 
      throw new AssertionError();
    case 18: 
      return JsonReader.Token.END_DOCUMENT;
    case 16: 
    case 17: 
      return JsonReader.Token.NUMBER;
    case 12: 
    case 13: 
    case 14: 
    case 15: 
      return JsonReader.Token.NAME;
    case 8: 
    case 9: 
    case 10: 
    case 11: 
      return JsonReader.Token.STRING;
    case 7: 
      return JsonReader.Token.NULL;
    case 5: 
    case 6: 
      return JsonReader.Token.BOOLEAN;
    case 4: 
      return JsonReader.Token.END_ARRAY;
    case 3: 
      return JsonReader.Token.BEGIN_ARRAY;
    case 2: 
      return JsonReader.Token.END_OBJECT;
    }
    return JsonReader.Token.BEGIN_OBJECT;
  }
  
  public int a0(JsonReader.a parama)
    throws IOException
  {
    int i1 = this.j;
    int i2 = i1;
    if (i1 == 0) {
      i2 = p0();
    }
    if ((i2 >= 12) && (i2 <= 15))
    {
      if (i2 == 15) {
        return q0(this.m, parama);
      }
      i2 = this.h.Q(parama.b);
      if (i2 != -1)
      {
        this.j = 0;
        this.c[(this.a - 1)] = parama.a[i2];
        return i2;
      }
      String str1 = this.c[(this.a - 1)];
      String str2 = E();
      i2 = q0(str2, parama);
      if (i2 == -1)
      {
        this.j = 15;
        this.m = str2;
        this.c[(this.a - 1)] = str1;
      }
      return i2;
    }
    return -1;
  }
  
  public void c0()
    throws IOException
  {
    if (!this.f)
    {
      int i1 = this.j;
      int i2 = i1;
      if (i1 == 0) {
        i2 = p0();
      }
      if (i2 == 14) {
        B0();
      } else if (i2 == 13) {
        y0(o);
      } else if (i2 == 12) {
        y0(n);
      } else {
        if (i2 != 15) {
          break label93;
        }
      }
      this.j = 0;
      this.c[(this.a - 1)] = "null";
      return;
      label93:
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("Expected a name but was ");
      localStringBuilder.append(W());
      localStringBuilder.append(" at path ");
      localStringBuilder.append(getPath());
      throw new JsonDataException(localStringBuilder.toString());
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Cannot skip unexpected ");
    localStringBuilder.append(W());
    localStringBuilder.append(" at ");
    localStringBuilder.append(getPath());
    throw new JsonDataException(localStringBuilder.toString());
  }
  
  public void close()
    throws IOException
  {
    this.j = 0;
    this.b[0] = 8;
    this.a = 1;
    this.i.d();
    this.h.close();
  }
  
  public void d()
    throws IOException
  {
    int i1 = this.j;
    int i2 = i1;
    if (i1 == 0) {
      i2 = p0();
    }
    if (i2 == 3)
    {
      Z(1);
      this.d[(this.a - 1)] = 0;
      this.j = 0;
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Expected BEGIN_ARRAY but was ");
    localStringBuilder.append(W());
    localStringBuilder.append(" at path ");
    localStringBuilder.append(getPath());
    throw new JsonDataException(localStringBuilder.toString());
  }
  
  public void d0()
    throws IOException
  {
    if (!this.f)
    {
      int i1 = 0;
      label396:
      do
      {
        int i2 = this.j;
        i3 = i2;
        if (i2 == 0) {
          i3 = p0();
        }
        if (i3 == 3) {
          Z(1);
        }
        for (;;)
        {
          i3 = i1 + 1;
          break label396;
          if (i3 != 1) {
            break;
          }
          Z(3);
        }
        if (i3 == 4)
        {
          i3 = i1 - 1;
          if (i3 >= 0)
          {
            this.a -= 1;
          }
          else
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("Expected a value but was ");
            ((StringBuilder)localObject).append(W());
            ((StringBuilder)localObject).append(" at path ");
            ((StringBuilder)localObject).append(getPath());
            throw new JsonDataException(((StringBuilder)localObject).toString());
          }
        }
        else if (i3 == 2)
        {
          i3 = i1 - 1;
          if (i3 >= 0)
          {
            this.a -= 1;
          }
          else
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("Expected a value but was ");
            ((StringBuilder)localObject).append(W());
            ((StringBuilder)localObject).append(" at path ");
            ((StringBuilder)localObject).append(getPath());
            throw new JsonDataException(((StringBuilder)localObject).toString());
          }
        }
        else if ((i3 != 14) && (i3 != 10))
        {
          if ((i3 != 9) && (i3 != 13))
          {
            if ((i3 != 8) && (i3 != 12))
            {
              if (i3 == 17)
              {
                this.i.skip(this.l);
                i3 = i1;
              }
              else if (i3 != 18)
              {
                i3 = i1;
              }
              else
              {
                localObject = new StringBuilder();
                ((StringBuilder)localObject).append("Expected a value but was ");
                ((StringBuilder)localObject).append(W());
                ((StringBuilder)localObject).append(" at path ");
                ((StringBuilder)localObject).append(getPath());
                throw new JsonDataException(((StringBuilder)localObject).toString());
              }
            }
            else
            {
              y0(n);
              i3 = i1;
            }
          }
          else
          {
            y0(o);
            i3 = i1;
          }
        }
        else
        {
          B0();
          i3 = i1;
        }
        this.j = 0;
        i1 = i3;
      } while (i3 != 0);
      localObject = this.d;
      int i3 = this.a;
      i1 = i3 - 1;
      localObject[i1] += 1;
      this.c[(i3 - 1)] = "null";
      return;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Cannot skip unexpected ");
    ((StringBuilder)localObject).append(W());
    ((StringBuilder)localObject).append(" at ");
    ((StringBuilder)localObject).append(getPath());
    throw new JsonDataException(((StringBuilder)localObject).toString());
  }
  
  public void e()
    throws IOException
  {
    int i1 = this.j;
    int i2 = i1;
    if (i1 == 0) {
      i2 = p0();
    }
    if (i2 == 1)
    {
      Z(3);
      this.j = 0;
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Expected BEGIN_OBJECT but was ");
    localStringBuilder.append(W());
    localStringBuilder.append(" at path ");
    localStringBuilder.append(getPath());
    throw new JsonDataException(localStringBuilder.toString());
  }
  
  public void j()
    throws IOException
  {
    int i1 = this.j;
    int i2 = i1;
    if (i1 == 0) {
      i2 = p0();
    }
    if (i2 == 4)
    {
      i2 = this.a - 1;
      this.a = i2;
      localObject = this.d;
      i2--;
      localObject[i2] += 1;
      this.j = 0;
      return;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Expected END_ARRAY but was ");
    ((StringBuilder)localObject).append(W());
    ((StringBuilder)localObject).append(" at path ");
    ((StringBuilder)localObject).append(getPath());
    throw new JsonDataException(((StringBuilder)localObject).toString());
  }
  
  public void m()
    throws IOException
  {
    int i1 = this.j;
    int i2 = i1;
    if (i1 == 0) {
      i2 = p0();
    }
    if (i2 == 2)
    {
      i2 = this.a - 1;
      this.a = i2;
      this.c[i2] = null;
      localObject = this.d;
      i2--;
      localObject[i2] += 1;
      this.j = 0;
      return;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Expected END_OBJECT but was ");
    ((StringBuilder)localObject).append(W());
    ((StringBuilder)localObject).append(" at path ");
    ((StringBuilder)localObject).append(getPath());
    throw new JsonDataException(((StringBuilder)localObject).toString());
  }
  
  public boolean q()
    throws IOException
  {
    int i1 = this.j;
    int i2 = i1;
    if (i1 == 0) {
      i2 = p0();
    }
    boolean bool;
    if ((i2 != 2) && (i2 != 4) && (i2 != 18)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean s()
    throws IOException
  {
    int i1 = this.j;
    int i2 = i1;
    if (i1 == 0) {
      i2 = p0();
    }
    if (i2 == 5)
    {
      this.j = 0;
      localObject = this.d;
      i2 = this.a - 1;
      localObject[i2] += 1;
      return true;
    }
    if (i2 == 6)
    {
      this.j = 0;
      localObject = this.d;
      i2 = this.a - 1;
      localObject[i2] += 1;
      return false;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Expected a boolean but was ");
    ((StringBuilder)localObject).append(W());
    ((StringBuilder)localObject).append(" at path ");
    ((StringBuilder)localObject).append(getPath());
    throw new JsonDataException(((StringBuilder)localObject).toString());
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("JsonReader(");
    localStringBuilder.append(this.h);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  public double x()
    throws IOException
  {
    int i1 = this.j;
    int i2 = i1;
    if (i1 == 0) {
      i2 = p0();
    }
    Object localObject;
    if (i2 == 16)
    {
      this.j = 0;
      localObject = this.d;
      i2 = this.a - 1;
      localObject[i2] += 1;
      return this.k;
    }
    if (i2 == 17) {
      this.m = this.i.q0(this.l);
    } else if (i2 == 9) {
      this.m = t0(o);
    } else if (i2 == 8) {
      this.m = t0(n);
    } else if (i2 == 10) {
      this.m = u0();
    } else {
      if (i2 != 11) {
        break label322;
      }
    }
    this.j = 11;
    try
    {
      double d = Double.parseDouble(this.m);
      if ((!this.e) && ((Double.isNaN(d)) || (Double.isInfinite(d))))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("JSON forbids NaN and infinities: ");
        ((StringBuilder)localObject).append(d);
        ((StringBuilder)localObject).append(" at path ");
        ((StringBuilder)localObject).append(getPath());
        throw new JsonEncodingException(((StringBuilder)localObject).toString());
      }
      this.m = null;
      this.j = 0;
      localObject = this.d;
      i2 = this.a - 1;
      localObject[i2] += 1;
      return d;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("Expected a double but was ");
      localStringBuilder.append(this.m);
      localStringBuilder.append(" at path ");
      localStringBuilder.append(getPath());
      throw new JsonDataException(localStringBuilder.toString());
    }
    label322:
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Expected a double but was ");
    localStringBuilder.append(W());
    localStringBuilder.append(" at path ");
    localStringBuilder.append(getPath());
    throw new JsonDataException(localStringBuilder.toString());
  }
  
  public int z()
    throws IOException
  {
    int i1 = this.j;
    int i2 = i1;
    if (i1 == 0) {
      i2 = p0();
    }
    Object localObject;
    if (i2 == 16)
    {
      long l1 = this.k;
      i2 = (int)l1;
      if (l1 == i2)
      {
        this.j = 0;
        localObject = this.d;
        i1 = this.a - 1;
        localObject[i1] += 1;
        return i2;
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Expected an int but was ");
      ((StringBuilder)localObject).append(this.k);
      ((StringBuilder)localObject).append(" at path ");
      ((StringBuilder)localObject).append(getPath());
      throw new JsonDataException(((StringBuilder)localObject).toString());
    }
    if (i2 == 17)
    {
      this.m = this.i.q0(this.l);
    }
    else if ((i2 != 9) && (i2 != 8))
    {
      if (i2 != 11)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Expected an int but was ");
        ((StringBuilder)localObject).append(W());
        ((StringBuilder)localObject).append(" at path ");
        ((StringBuilder)localObject).append(getPath());
        throw new JsonDataException(((StringBuilder)localObject).toString());
      }
    }
    else
    {
      if (i2 == 9) {
        localObject = t0(o);
      } else {
        localObject = t0(n);
      }
      this.m = ((String)localObject);
    }
    try
    {
      i2 = Integer.parseInt((String)localObject);
      this.j = 0;
      localObject = this.d;
      i1 = this.a - 1;
      localObject[i1] += 1;
      return i2;
    }
    catch (NumberFormatException localNumberFormatException2)
    {
      label305:
      break label305;
    }
    this.j = 11;
    try
    {
      double d = Double.parseDouble(this.m);
      i1 = (int)d;
      if (i1 == d)
      {
        this.m = null;
        this.j = 0;
        localObject = this.d;
        i2 = this.a - 1;
        localObject[i2] += 1;
        return i1;
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Expected an int but was ");
      ((StringBuilder)localObject).append(this.m);
      ((StringBuilder)localObject).append(" at path ");
      ((StringBuilder)localObject).append(getPath());
      throw new JsonDataException(((StringBuilder)localObject).toString());
    }
    catch (NumberFormatException localNumberFormatException1)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Expected an int but was ");
      localStringBuilder.append(this.m);
      localStringBuilder.append(" at path ");
      localStringBuilder.append(getPath());
      throw new JsonDataException(localStringBuilder.toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.parser.moshi.b
 * JD-Core Version:    0.7.0.1
 */