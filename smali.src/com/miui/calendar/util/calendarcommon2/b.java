package com.miui.calendar.util.calendarcommon2;

import android.util.Log;
import com.miui.calendar.util.r0;
import java.util.Iterator;
import java.util.TreeSet;

public class b
{
  private static final int[] f = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
  private static final int[] g = { 0, 31, 59, 90, 120, 151, 180, 212, 243, 273, 304, 334 };
  private r0 a = new r0("UTC");
  private r0 b = new r0("UTC");
  private StringBuilder c = new StringBuilder();
  private r0 d = new r0("UTC");
  private a e = new a(false);
  
  private static int c(EventRecurrence paramEventRecurrence, r0 paramr0)
  {
    int i = paramEventRecurrence.b;
    int j;
    if (6 >= i)
    {
      j = paramEventRecurrence.w;
      if ((j > 0) && (!f(paramEventRecurrence.v, j, paramr0.p() + 1))) {
        return 1;
      }
    }
    if (5 >= i)
    {
      j = paramEventRecurrence.u;
      if ((j > 0) && (!g(paramEventRecurrence.t, j, paramr0.u(), paramr0.g(9)))) {
        return 2;
      }
    }
    if (4 >= i)
    {
      j = paramEventRecurrence.s;
      if ((j > 0) && (!g(paramEventRecurrence.r, j, paramr0.w(), paramr0.g(8)))) {
        return 3;
      }
      j = paramEventRecurrence.q;
      if ((j > 0) && (!g(paramEventRecurrence.p, j, paramr0.q(), paramr0.g(4)))) {
        return 4;
      }
      int k = paramEventRecurrence.o;
      if (k > 0)
      {
        int[] arrayOfInt = paramEventRecurrence.m;
        int m = EventRecurrence.n(paramr0.t());
        for (j = 0; j < k; j++) {
          if (arrayOfInt[j] == m) {
            break label198;
          }
        }
        return 5;
      }
    }
    label198:
    if ((3 >= i) && (!g(paramEventRecurrence.k, paramEventRecurrence.l, paramr0.m(), paramr0.g(3)))) {
      return 6;
    }
    if ((2 >= i) && (!g(paramEventRecurrence.i, paramEventRecurrence.j, paramr0.o(), paramr0.g(2)))) {
      return 7;
    }
    if ((1 >= i) && (!g(paramEventRecurrence.g, paramEventRecurrence.h, paramr0.r(), paramr0.g(1)))) {
      return 8;
    }
    if (paramEventRecurrence.y > 0)
    {
      if (i == 6)
      {
        j = paramEventRecurrence.o;
        if (j > 0)
        {
          j--;
          while (j >= 0)
          {
            if (paramEventRecurrence.n[j] != 0)
            {
              if (!Log.isLoggable("RecurrenceProcessor", 2)) {
                break label429;
              }
              paramr0 = new StringBuilder();
              paramr0.append("BYSETPOS not supported with these rules: ");
              paramr0.append(paramEventRecurrence);
              Log.v("RecurrenceProcessor", paramr0.toString());
              break label429;
            }
            j--;
          }
          if (d(paramEventRecurrence, paramr0)) {
            break label429;
          }
          return 9;
        }
      }
      if (Log.isLoggable("RecurrenceProcessor", 2))
      {
        paramr0 = new StringBuilder();
        paramr0.append("BYSETPOS not supported with these rules: ");
        paramr0.append(paramEventRecurrence);
        Log.v("RecurrenceProcessor", paramr0.toString());
      }
    }
    label429:
    return 0;
  }
  
  private static boolean d(EventRecurrence paramEventRecurrence, r0 paramr0)
  {
    int i = (paramr0.t() - paramr0.q() + 36) % 7;
    int j = 0;
    int k = j;
    while (j < paramEventRecurrence.o)
    {
      k |= paramEventRecurrence.m[j];
      j++;
    }
    int m = paramr0.g(4);
    int[] arrayOfInt = new int[m];
    j = 0;
    int n = 1;
    while (n <= m)
    {
      int i1 = j;
      if ((65536 << i & k) != 0)
      {
        arrayOfInt[j] = n;
        i1 = j + 1;
      }
      i++;
      j = i;
      if (i == 7) {
        j = 0;
      }
      n++;
      i = j;
      j = i1;
    }
    k = paramEventRecurrence.y - 1;
    while (k >= 0)
    {
      n = paramEventRecurrence.x[k];
      if (n > 0)
      {
        if ((n <= j) && (arrayOfInt[(n - 1)] == paramr0.q())) {
          return true;
        }
      }
      else
      {
        if (n >= 0) {
          break label210;
        }
        n += j;
        if ((n >= 0) && (arrayOfInt[n] == paramr0.q())) {
          return true;
        }
      }
      k--;
      continue;
      label210:
      throw new RuntimeException("invalid bysetpos value");
    }
    return false;
  }
  
  static boolean e(int paramInt)
  {
    boolean bool;
    if ((paramInt % 4 == 0) && ((paramInt % 100 != 0) || (paramInt % 400 == 0))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static boolean f(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    for (int i = 0; i < paramInt1; i++) {
      if (paramArrayOfInt[i] == paramInt2) {
        return true;
      }
    }
    return false;
  }
  
  private static boolean g(int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3)
  {
    for (int i = 0; i < paramInt1; i++)
    {
      int j = paramArrayOfInt[i];
      if (j > 0)
      {
        if (j == paramInt2) {
          return true;
        }
      }
      else
      {
        j = paramInt3 + j;
        paramInt3 = j;
        if (j == paramInt2) {
          return true;
        }
      }
    }
    return false;
  }
  
  static int h(int paramInt1, int paramInt2)
  {
    int i = f[paramInt2];
    paramInt2 = 28;
    if (i != 28) {
      return i;
    }
    if (e(paramInt1)) {
      paramInt2 = 29;
    }
    return paramInt2;
  }
  
  private static final long i(r0 paramr0)
  {
    return (paramr0.v() << 26) + (paramr0.p() << 22) + (paramr0.q() << 17) + (paramr0.m() << 12) + (paramr0.o() << 6) + paramr0.r();
  }
  
  private static final void j(r0 paramr0, long paramLong)
  {
    paramr0.N((int)(paramLong >> 26));
    paramr0.I((int)(paramLong >> 22) & 0xF);
    paramr0.J((int)(paramLong >> 17) & 0x1F);
    paramr0.F((int)(paramLong >> 12) & 0x1F);
    paramr0.H((int)(paramLong >> 6) & 0x3F);
    paramr0.K((int)(paramLong & 0x3F));
  }
  
  static void k(r0 paramr0)
  {
    int i = paramr0.r();
    int j = paramr0.o();
    int k = paramr0.m();
    int m = paramr0.q();
    int n = paramr0.p();
    int i1 = paramr0.v();
    int i2;
    if (i < 0) {
      i2 = i - 59;
    } else {
      i2 = i;
    }
    int i3 = i2 / 60;
    int i4 = j + i3;
    if (i4 < 0) {
      i2 = i4 - 59;
    } else {
      i2 = i4;
    }
    int i5 = i2 / 60;
    int i6 = k + i5;
    if (i6 < 0) {
      i2 = i6 - 23;
    } else {
      i2 = i6;
    }
    int i7 = i2 / 24;
    j = m + i7;
    while (j <= 0)
    {
      if (n > 1) {
        i2 = m(i1);
      } else {
        i2 = m(i1 - 1);
      }
      j += i2;
      i1--;
    }
    if (n < 0)
    {
      i2 = (n + 1) / 12 - 1;
      m = i1 + i2;
      i2 = n - i2 * 12;
      k = j;
    }
    else
    {
      k = j;
      i2 = n;
      m = i1;
      if (n >= 12)
      {
        i2 = n / 12;
        m = i1 + i2;
        i2 = n - i2 * 12;
        k = j;
      }
    }
    for (;;)
    {
      i1 = k;
      j = m;
      if (i2 == 0)
      {
        n = m(m);
        i1 = k;
        j = m;
        if (k > n)
        {
          j = m + 1;
          i1 = k - n;
        }
      }
      m = h(j, i2);
      if (i1 <= m) {
        break;
      }
      i1 -= m;
      n = i2 + 1;
      k = i1;
      i2 = n;
      m = j;
      if (n >= 12)
      {
        i2 = n - 12;
        m = j + 1;
        k = i1;
      }
    }
    paramr0.K(i - i3 * 60);
    paramr0.H(i4 - i5 * 60);
    paramr0.F(i6 - i7 * 24);
    paramr0.J(i1);
    paramr0.I(i2);
    paramr0.N(j);
  }
  
  private static boolean l(int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool;
    if ((paramInt1 > paramInt2) && (paramInt3 > 0)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  static int m(int paramInt)
  {
    if (e(paramInt)) {
      paramInt = 366;
    } else {
      paramInt = 365;
    }
    return paramInt;
  }
  
  /* Error */
  public void a(r0 paramr0, EventRecurrence paramEventRecurrence, long paramLong1, long paramLong2, boolean paramBoolean, TreeSet<Long> paramTreeSet)
    throws DateException
  {
    // Byte code:
    //   0: ldc 211
    //   2: astore 9
    //   4: ldc 213
    //   6: astore 10
    //   8: ldc 138
    //   10: astore 11
    //   12: aload_1
    //   13: invokestatic 215	com/miui/calendar/util/calendarcommon2/b:k	(Lcom/miui/calendar/util/r0;)V
    //   16: aload_1
    //   17: invokestatic 217	com/miui/calendar/util/calendarcommon2/b:i	(Lcom/miui/calendar/util/r0;)J
    //   20: lstore 12
    //   22: iload 7
    //   24: ifeq +35 -> 59
    //   27: lload 12
    //   29: lload_3
    //   30: lcmp
    //   31: iflt +28 -> 59
    //   34: lload 12
    //   36: lload 5
    //   38: lcmp
    //   39: ifge +20 -> 59
    //   42: aload 8
    //   44: lload 12
    //   46: invokestatic 223	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   49: invokevirtual 229	java/util/TreeSet:add	(Ljava/lang/Object;)Z
    //   52: pop
    //   53: iconst_1
    //   54: istore 14
    //   56: goto +6 -> 62
    //   59: iconst_0
    //   60: istore 14
    //   62: aload_0
    //   63: getfield 36	com/miui/calendar/util/calendarcommon2/b:a	Lcom/miui/calendar/util/r0;
    //   66: astore 15
    //   68: aload_0
    //   69: getfield 38	com/miui/calendar/util/calendarcommon2/b:b	Lcom/miui/calendar/util/r0;
    //   72: astore 16
    //   74: aload_0
    //   75: getfield 43	com/miui/calendar/util/calendarcommon2/b:c	Ljava/lang/StringBuilder;
    //   78: astore 17
    //   80: iload 14
    //   82: istore 18
    //   84: aload_0
    //   85: getfield 45	com/miui/calendar/util/calendarcommon2/b:d	Lcom/miui/calendar/util/r0;
    //   88: astore 19
    //   90: aload_0
    //   91: getfield 50	com/miui/calendar/util/calendarcommon2/b:e	Lcom/miui/calendar/util/calendarcommon2/b$a;
    //   94: astore 20
    //   96: aload 9
    //   98: astore 21
    //   100: aload 10
    //   102: astore 22
    //   104: aload 11
    //   106: astore 23
    //   108: aload 9
    //   110: astore 24
    //   112: aload 10
    //   114: astore 25
    //   116: aload 11
    //   118: astore 26
    //   120: aload 20
    //   122: aload_2
    //   123: invokevirtual 232	com/miui/calendar/util/calendarcommon2/b$a:c	(Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;)V
    //   126: ldc2_w 233
    //   129: lstore 27
    //   131: lload 5
    //   133: ldc2_w 233
    //   136: lcmp
    //   137: ifne +152 -> 289
    //   140: aload 9
    //   142: astore 21
    //   144: aload 10
    //   146: astore 22
    //   148: aload 11
    //   150: astore 23
    //   152: aload 9
    //   154: astore 24
    //   156: aload 10
    //   158: astore 25
    //   160: aload 11
    //   162: astore 26
    //   164: aload_2
    //   165: getfield 237	com/miui/calendar/util/calendarcommon2/EventRecurrence:c	Ljava/lang/String;
    //   168: ifnonnull +121 -> 289
    //   171: aload 9
    //   173: astore 21
    //   175: aload 10
    //   177: astore 22
    //   179: aload 11
    //   181: astore 23
    //   183: aload 9
    //   185: astore 24
    //   187: aload 10
    //   189: astore 25
    //   191: aload 11
    //   193: astore 26
    //   195: aload_2
    //   196: getfield 239	com/miui/calendar/util/calendarcommon2/EventRecurrence:d	I
    //   199: ifeq +6 -> 205
    //   202: goto +87 -> 289
    //   205: aload 9
    //   207: astore 21
    //   209: aload 10
    //   211: astore 22
    //   213: aload 11
    //   215: astore 23
    //   217: aload 9
    //   219: astore 24
    //   221: aload 10
    //   223: astore 25
    //   225: aload 11
    //   227: astore 26
    //   229: new 209	com/miui/calendar/util/calendarcommon2/DateException
    //   232: astore_1
    //   233: aload 9
    //   235: astore 21
    //   237: aload 10
    //   239: astore 22
    //   241: aload 11
    //   243: astore 23
    //   245: aload 9
    //   247: astore 24
    //   249: aload 10
    //   251: astore 25
    //   253: aload 11
    //   255: astore 26
    //   257: aload_1
    //   258: ldc 241
    //   260: invokespecial 242	com/miui/calendar/util/calendarcommon2/DateException:<init>	(Ljava/lang/String;)V
    //   263: aload 9
    //   265: astore 21
    //   267: aload 10
    //   269: astore 22
    //   271: aload 11
    //   273: astore 23
    //   275: aload 9
    //   277: astore 24
    //   279: aload 10
    //   281: astore 25
    //   283: aload 11
    //   285: astore 26
    //   287: aload_1
    //   288: athrow
    //   289: aload 9
    //   291: astore 21
    //   293: aload 10
    //   295: astore 22
    //   297: aload 11
    //   299: astore 23
    //   301: aload 9
    //   303: astore 24
    //   305: aload 10
    //   307: astore 25
    //   309: aload 11
    //   311: astore 26
    //   313: aload_2
    //   314: getfield 244	com/miui/calendar/util/calendarcommon2/EventRecurrence:e	I
    //   317: istore 29
    //   319: aload 9
    //   321: astore 21
    //   323: aload 10
    //   325: astore 22
    //   327: aload 11
    //   329: astore 23
    //   331: aload 9
    //   333: astore 24
    //   335: aload 10
    //   337: astore 25
    //   339: aload 11
    //   341: astore 26
    //   343: aload_2
    //   344: getfield 56	com/miui/calendar/util/calendarcommon2/EventRecurrence:b	I
    //   347: istore 30
    //   349: iload 29
    //   351: istore 14
    //   353: iload 30
    //   355: tableswitch	default:+41 -> 396, 1:+141->496, 2:+135->490, 3:+129->484, 4:+115->470, 5:+95->450, 6:+89->444, 7:+82->437
    //   397: <illegal opcode>
    //   398: astore_1
    //   399: ldc 213
    //   401: astore 10
    //   403: ldc 138
    //   405: astore 8
    //   407: aload 8
    //   409: astore 31
    //   411: aload_1
    //   412: astore 9
    //   414: aload 10
    //   416: astore 25
    //   418: aload 8
    //   420: astore 15
    //   422: aload_1
    //   423: astore 20
    //   425: aload 10
    //   427: astore 22
    //   429: new 209	com/miui/calendar/util/calendarcommon2/DateException
    //   432: astore 24
    //   434: goto +3314 -> 3748
    //   437: bipush 6
    //   439: istore 14
    //   441: goto +58 -> 499
    //   444: iconst_5
    //   445: istore 14
    //   447: goto +52 -> 499
    //   450: iload 29
    //   452: bipush 7
    //   454: imul
    //   455: istore 29
    //   457: iload 29
    //   459: istore 14
    //   461: iload 29
    //   463: ifgt +7 -> 470
    //   466: bipush 7
    //   468: istore 14
    //   470: iconst_4
    //   471: istore 32
    //   473: iload 14
    //   475: istore 29
    //   477: iload 32
    //   479: istore 14
    //   481: goto +18 -> 499
    //   484: iconst_3
    //   485: istore 14
    //   487: goto +12 -> 499
    //   490: iconst_2
    //   491: istore 14
    //   493: goto +6 -> 499
    //   496: iconst_1
    //   497: istore 14
    //   499: iload 29
    //   501: istore 33
    //   503: iload 29
    //   505: ifgt +6 -> 511
    //   508: iconst_1
    //   509: istore 33
    //   511: aload 9
    //   513: astore 21
    //   515: aload 10
    //   517: astore 22
    //   519: aload 11
    //   521: astore 23
    //   523: aload 9
    //   525: astore 24
    //   527: aload 10
    //   529: astore 25
    //   531: aload 11
    //   533: astore 26
    //   535: aload_2
    //   536: getfield 59	com/miui/calendar/util/calendarcommon2/EventRecurrence:w	I
    //   539: istore 34
    //   541: aload 9
    //   543: astore 21
    //   545: aload 10
    //   547: astore 22
    //   549: aload 11
    //   551: astore 23
    //   553: aload 9
    //   555: astore 24
    //   557: aload 10
    //   559: astore 25
    //   561: aload 11
    //   563: astore 26
    //   565: iload 30
    //   567: bipush 6
    //   569: iload 34
    //   571: invokestatic 246	com/miui/calendar/util/calendarcommon2/b:l	(III)Z
    //   574: istore 35
    //   576: iload 30
    //   578: iconst_5
    //   579: if_icmplt +71 -> 650
    //   582: aload 9
    //   584: astore 21
    //   586: aload 10
    //   588: astore 22
    //   590: aload 11
    //   592: astore 23
    //   594: aload 9
    //   596: astore 24
    //   598: aload 10
    //   600: astore 25
    //   602: aload 11
    //   604: astore 26
    //   606: aload_2
    //   607: getfield 101	com/miui/calendar/util/calendarcommon2/EventRecurrence:o	I
    //   610: ifgt +34 -> 644
    //   613: aload 9
    //   615: astore 21
    //   617: aload 10
    //   619: astore 22
    //   621: aload 11
    //   623: astore 23
    //   625: aload 9
    //   627: astore 24
    //   629: aload 10
    //   631: astore 25
    //   633: aload 11
    //   635: astore 26
    //   637: aload_2
    //   638: getfield 94	com/miui/calendar/util/calendarcommon2/EventRecurrence:q	I
    //   641: ifle +9 -> 650
    //   644: iconst_1
    //   645: istore 36
    //   647: goto +6 -> 653
    //   650: iconst_0
    //   651: istore 36
    //   653: aload 9
    //   655: astore 21
    //   657: aload 10
    //   659: astore 22
    //   661: aload 11
    //   663: astore 23
    //   665: aload 9
    //   667: astore 24
    //   669: aload 10
    //   671: astore 25
    //   673: aload 11
    //   675: astore 26
    //   677: aload_2
    //   678: getfield 115	com/miui/calendar/util/calendarcommon2/EventRecurrence:l	I
    //   681: istore 37
    //   683: aload 9
    //   685: astore 21
    //   687: aload 10
    //   689: astore 22
    //   691: aload 11
    //   693: astore 23
    //   695: aload 9
    //   697: astore 24
    //   699: aload 10
    //   701: astore 25
    //   703: aload 11
    //   705: astore 26
    //   707: iload 30
    //   709: iconst_3
    //   710: iload 37
    //   712: invokestatic 246	com/miui/calendar/util/calendarcommon2/b:l	(III)Z
    //   715: istore 38
    //   717: aload 9
    //   719: astore 21
    //   721: aload 10
    //   723: astore 22
    //   725: aload 11
    //   727: astore 23
    //   729: aload 9
    //   731: astore 24
    //   733: aload 10
    //   735: astore 25
    //   737: aload 11
    //   739: astore 26
    //   741: aload_2
    //   742: getfield 123	com/miui/calendar/util/calendarcommon2/EventRecurrence:j	I
    //   745: istore 39
    //   747: aload 9
    //   749: astore 21
    //   751: aload 10
    //   753: astore 22
    //   755: aload 11
    //   757: astore 23
    //   759: aload 9
    //   761: astore 24
    //   763: aload 10
    //   765: astore 25
    //   767: aload 11
    //   769: astore 26
    //   771: iload 30
    //   773: iconst_2
    //   774: iload 39
    //   776: invokestatic 246	com/miui/calendar/util/calendarcommon2/b:l	(III)Z
    //   779: istore 40
    //   781: aload 9
    //   783: astore 21
    //   785: aload 10
    //   787: astore 22
    //   789: aload 11
    //   791: astore 23
    //   793: aload 9
    //   795: astore 24
    //   797: aload 10
    //   799: astore 25
    //   801: aload 11
    //   803: astore 26
    //   805: aload_2
    //   806: getfield 129	com/miui/calendar/util/calendarcommon2/EventRecurrence:h	I
    //   809: istore 32
    //   811: aload 9
    //   813: astore 21
    //   815: aload 10
    //   817: astore 22
    //   819: aload 11
    //   821: astore 23
    //   823: aload 9
    //   825: astore 24
    //   827: aload 10
    //   829: astore 25
    //   831: aload 11
    //   833: astore 26
    //   835: iload 30
    //   837: iconst_1
    //   838: iload 32
    //   840: invokestatic 246	com/miui/calendar/util/calendarcommon2/b:l	(III)Z
    //   843: istore 41
    //   845: aload 9
    //   847: astore 21
    //   849: aload 10
    //   851: astore 22
    //   853: aload 11
    //   855: astore 23
    //   857: aload 9
    //   859: astore 24
    //   861: aload 10
    //   863: astore 25
    //   865: aload 11
    //   867: astore 26
    //   869: aload 15
    //   871: aload_1
    //   872: invokevirtual 249	com/miui/calendar/util/r0:E	(Lcom/miui/calendar/util/r0;)V
    //   875: iload 14
    //   877: iconst_5
    //   878: if_icmpne +38 -> 916
    //   881: iload 36
    //   883: ifeq +33 -> 916
    //   886: aload 9
    //   888: astore 21
    //   890: aload 10
    //   892: astore 22
    //   894: aload 11
    //   896: astore 23
    //   898: aload 9
    //   900: astore 24
    //   902: aload 10
    //   904: astore 25
    //   906: aload 11
    //   908: astore 26
    //   910: aload 15
    //   912: iconst_1
    //   913: invokevirtual 189	com/miui/calendar/util/r0:J	(I)V
    //   916: aload 9
    //   918: astore 21
    //   920: aload 10
    //   922: astore 22
    //   924: aload 11
    //   926: astore 23
    //   928: aload 9
    //   930: astore 24
    //   932: aload 10
    //   934: astore 25
    //   936: aload 11
    //   938: astore 26
    //   940: aload_2
    //   941: getfield 237	com/miui/calendar/util/calendarcommon2/EventRecurrence:c	Ljava/lang/String;
    //   944: astore 42
    //   946: iload 14
    //   948: istore 43
    //   950: aload 42
    //   952: ifnull +293 -> 1245
    //   955: aload 42
    //   957: astore 31
    //   959: aload 9
    //   961: astore 21
    //   963: aload 10
    //   965: astore 22
    //   967: aload 11
    //   969: astore 23
    //   971: aload 9
    //   973: astore 24
    //   975: aload 10
    //   977: astore 25
    //   979: aload 11
    //   981: astore 26
    //   983: aload 42
    //   985: invokevirtual 254	java/lang/String:length	()I
    //   988: bipush 15
    //   990: if_icmpne +156 -> 1146
    //   993: aload 9
    //   995: astore 21
    //   997: aload 10
    //   999: astore 22
    //   1001: aload 11
    //   1003: astore 23
    //   1005: aload 9
    //   1007: astore 24
    //   1009: aload 10
    //   1011: astore 25
    //   1013: aload 11
    //   1015: astore 26
    //   1017: new 40	java/lang/StringBuilder
    //   1020: astore 31
    //   1022: aload 9
    //   1024: astore 21
    //   1026: aload 10
    //   1028: astore 22
    //   1030: aload 11
    //   1032: astore 23
    //   1034: aload 9
    //   1036: astore 24
    //   1038: aload 10
    //   1040: astore 25
    //   1042: aload 11
    //   1044: astore 26
    //   1046: aload 31
    //   1048: invokespecial 41	java/lang/StringBuilder:<init>	()V
    //   1051: aload 9
    //   1053: astore 21
    //   1055: aload 10
    //   1057: astore 22
    //   1059: aload 11
    //   1061: astore 23
    //   1063: aload 9
    //   1065: astore 24
    //   1067: aload 10
    //   1069: astore 25
    //   1071: aload 11
    //   1073: astore 26
    //   1075: aload 31
    //   1077: aload 42
    //   1079: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1082: pop
    //   1083: aload 9
    //   1085: astore 21
    //   1087: aload 10
    //   1089: astore 22
    //   1091: aload 11
    //   1093: astore 23
    //   1095: aload 9
    //   1097: astore 24
    //   1099: aload 10
    //   1101: astore 25
    //   1103: aload 11
    //   1105: astore 26
    //   1107: aload 31
    //   1109: bipush 90
    //   1111: invokevirtual 257	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   1114: pop
    //   1115: aload 9
    //   1117: astore 21
    //   1119: aload 10
    //   1121: astore 22
    //   1123: aload 11
    //   1125: astore 23
    //   1127: aload 9
    //   1129: astore 24
    //   1131: aload 10
    //   1133: astore 25
    //   1135: aload 11
    //   1137: astore 26
    //   1139: aload 31
    //   1141: invokevirtual 157	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1144: astore 31
    //   1146: aload 9
    //   1148: astore 21
    //   1150: aload 10
    //   1152: astore 22
    //   1154: aload 11
    //   1156: astore 23
    //   1158: aload 9
    //   1160: astore 24
    //   1162: aload 10
    //   1164: astore 25
    //   1166: aload 11
    //   1168: astore 26
    //   1170: aload 16
    //   1172: aload 31
    //   1174: invokevirtual 261	com/miui/calendar/util/r0:z	(Ljava/lang/String;)Z
    //   1177: pop
    //   1178: aload 9
    //   1180: astore 21
    //   1182: aload 10
    //   1184: astore 22
    //   1186: aload 11
    //   1188: astore 23
    //   1190: aload 9
    //   1192: astore 24
    //   1194: aload 10
    //   1196: astore 25
    //   1198: aload 11
    //   1200: astore 26
    //   1202: aload 16
    //   1204: aload_1
    //   1205: invokevirtual 263	com/miui/calendar/util/r0:s	()Ljava/lang/String;
    //   1208: invokevirtual 266	com/miui/calendar/util/r0:O	(Ljava/lang/String;)V
    //   1211: aload 9
    //   1213: astore 21
    //   1215: aload 10
    //   1217: astore 22
    //   1219: aload 11
    //   1221: astore 23
    //   1223: aload 9
    //   1225: astore 24
    //   1227: aload 10
    //   1229: astore 25
    //   1231: aload 11
    //   1233: astore 26
    //   1235: aload 16
    //   1237: invokestatic 217	com/miui/calendar/util/calendarcommon2/b:i	(Lcom/miui/calendar/util/r0;)J
    //   1240: lstore 27
    //   1242: goto +3 -> 1245
    //   1245: iload 30
    //   1247: istore 14
    //   1249: aload 9
    //   1251: astore 21
    //   1253: aload 10
    //   1255: astore 22
    //   1257: aload 11
    //   1259: astore 23
    //   1261: aload 9
    //   1263: astore 24
    //   1265: aload 10
    //   1267: astore 25
    //   1269: aload 11
    //   1271: astore 26
    //   1273: aload 17
    //   1275: bipush 15
    //   1277: invokevirtual 269	java/lang/StringBuilder:ensureCapacity	(I)V
    //   1280: aload 9
    //   1282: astore 21
    //   1284: aload 10
    //   1286: astore 22
    //   1288: aload 11
    //   1290: astore 23
    //   1292: aload 9
    //   1294: astore 24
    //   1296: aload 10
    //   1298: astore 25
    //   1300: aload 11
    //   1302: astore 26
    //   1304: aload 17
    //   1306: bipush 15
    //   1308: invokevirtual 272	java/lang/StringBuilder:setLength	(I)V
    //   1311: iconst_0
    //   1312: istore 29
    //   1314: aload 15
    //   1316: astore 31
    //   1318: aload 9
    //   1320: astore_1
    //   1321: iload 29
    //   1323: iconst_1
    //   1324: iadd
    //   1325: istore 44
    //   1327: iload 29
    //   1329: sipush 2000
    //   1332: if_icmple +271 -> 1603
    //   1335: aload_1
    //   1336: astore 21
    //   1338: aload 10
    //   1340: astore 22
    //   1342: aload 11
    //   1344: astore 23
    //   1346: aload_1
    //   1347: astore 24
    //   1349: aload 10
    //   1351: astore 25
    //   1353: aload 11
    //   1355: astore 26
    //   1357: new 40	java/lang/StringBuilder
    //   1360: astore 8
    //   1362: aload_1
    //   1363: astore 21
    //   1365: aload 10
    //   1367: astore 22
    //   1369: aload 11
    //   1371: astore 23
    //   1373: aload_1
    //   1374: astore 24
    //   1376: aload 10
    //   1378: astore 25
    //   1380: aload 11
    //   1382: astore 26
    //   1384: aload 8
    //   1386: invokespecial 41	java/lang/StringBuilder:<init>	()V
    //   1389: aload_1
    //   1390: astore 21
    //   1392: aload 10
    //   1394: astore 22
    //   1396: aload 11
    //   1398: astore 23
    //   1400: aload_1
    //   1401: astore 24
    //   1403: aload 10
    //   1405: astore 25
    //   1407: aload 11
    //   1409: astore 26
    //   1411: aload 8
    //   1413: ldc_w 274
    //   1416: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1419: pop
    //   1420: aload_1
    //   1421: astore 21
    //   1423: aload 10
    //   1425: astore 22
    //   1427: aload 11
    //   1429: astore 23
    //   1431: aload_1
    //   1432: astore 24
    //   1434: aload 10
    //   1436: astore 25
    //   1438: aload 11
    //   1440: astore 26
    //   1442: aload 8
    //   1444: aload_2
    //   1445: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1448: pop
    //   1449: aload_1
    //   1450: astore 21
    //   1452: aload 10
    //   1454: astore 22
    //   1456: aload 11
    //   1458: astore 23
    //   1460: aload_1
    //   1461: astore 24
    //   1463: aload 10
    //   1465: astore 25
    //   1467: aload 11
    //   1469: astore 26
    //   1471: aload 8
    //   1473: aload 10
    //   1475: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1478: pop
    //   1479: aload_1
    //   1480: astore 21
    //   1482: aload 10
    //   1484: astore 22
    //   1486: aload 11
    //   1488: astore 23
    //   1490: aload_1
    //   1491: astore 24
    //   1493: aload 10
    //   1495: astore 25
    //   1497: aload 11
    //   1499: astore 26
    //   1501: aload 8
    //   1503: lload_3
    //   1504: invokevirtual 277	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1507: pop
    //   1508: aload_1
    //   1509: astore 21
    //   1511: aload 10
    //   1513: astore 22
    //   1515: aload 11
    //   1517: astore 23
    //   1519: aload_1
    //   1520: astore 24
    //   1522: aload 10
    //   1524: astore 25
    //   1526: aload 11
    //   1528: astore 26
    //   1530: aload 8
    //   1532: aload_1
    //   1533: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1536: pop
    //   1537: aload_1
    //   1538: astore 21
    //   1540: aload 10
    //   1542: astore 22
    //   1544: aload 11
    //   1546: astore 23
    //   1548: aload_1
    //   1549: astore 24
    //   1551: aload 10
    //   1553: astore 25
    //   1555: aload 11
    //   1557: astore 26
    //   1559: aload 8
    //   1561: lload 5
    //   1563: invokevirtual 277	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1566: pop
    //   1567: aload_1
    //   1568: astore 21
    //   1570: aload 10
    //   1572: astore 22
    //   1574: aload 11
    //   1576: astore 23
    //   1578: aload_1
    //   1579: astore 24
    //   1581: aload 10
    //   1583: astore 25
    //   1585: aload 11
    //   1587: astore 26
    //   1589: aload 11
    //   1591: aload 8
    //   1593: invokevirtual 157	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1596: invokestatic 279	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   1599: pop
    //   1600: goto +1071 -> 2671
    //   1603: aload_1
    //   1604: astore 21
    //   1606: aload 10
    //   1608: astore 22
    //   1610: aload 11
    //   1612: astore 23
    //   1614: aload_1
    //   1615: astore 24
    //   1617: aload 10
    //   1619: astore 25
    //   1621: aload 11
    //   1623: astore 26
    //   1625: aload 31
    //   1627: invokestatic 215	com/miui/calendar/util/calendarcommon2/b:k	(Lcom/miui/calendar/util/r0;)V
    //   1630: aload_1
    //   1631: astore 21
    //   1633: aload 10
    //   1635: astore 22
    //   1637: aload 11
    //   1639: astore 23
    //   1641: aload_1
    //   1642: astore 24
    //   1644: aload 10
    //   1646: astore 25
    //   1648: aload 11
    //   1650: astore 26
    //   1652: aload 31
    //   1654: invokevirtual 179	com/miui/calendar/util/r0:v	()I
    //   1657: istore 30
    //   1659: aload_1
    //   1660: astore 21
    //   1662: aload 10
    //   1664: astore 22
    //   1666: aload 11
    //   1668: astore 23
    //   1670: aload_1
    //   1671: astore 24
    //   1673: aload 10
    //   1675: astore 25
    //   1677: aload 11
    //   1679: astore 26
    //   1681: aload 31
    //   1683: invokevirtual 66	com/miui/calendar/util/r0:p	()I
    //   1686: iconst_1
    //   1687: iadd
    //   1688: istore 45
    //   1690: aload_1
    //   1691: astore 21
    //   1693: aload 10
    //   1695: astore 22
    //   1697: aload 11
    //   1699: astore 23
    //   1701: aload_1
    //   1702: astore 24
    //   1704: aload 10
    //   1706: astore 25
    //   1708: aload 11
    //   1710: astore 26
    //   1712: aload 31
    //   1714: invokevirtual 98	com/miui/calendar/util/r0:q	()I
    //   1717: istore 46
    //   1719: aload_1
    //   1720: astore 21
    //   1722: aload 10
    //   1724: astore 22
    //   1726: aload 11
    //   1728: astore 23
    //   1730: aload_1
    //   1731: astore 24
    //   1733: aload 10
    //   1735: astore 25
    //   1737: aload 11
    //   1739: astore 26
    //   1741: aload 31
    //   1743: invokevirtual 117	com/miui/calendar/util/r0:m	()I
    //   1746: istore 47
    //   1748: aload_1
    //   1749: astore 21
    //   1751: aload 10
    //   1753: astore 22
    //   1755: aload 11
    //   1757: astore 23
    //   1759: aload_1
    //   1760: astore 24
    //   1762: aload 10
    //   1764: astore 25
    //   1766: aload 11
    //   1768: astore 26
    //   1770: aload 31
    //   1772: invokevirtual 125	com/miui/calendar/util/r0:o	()I
    //   1775: istore 48
    //   1777: aload_1
    //   1778: astore 21
    //   1780: aload 10
    //   1782: astore 22
    //   1784: aload 11
    //   1786: astore 23
    //   1788: aload_1
    //   1789: astore 24
    //   1791: aload 10
    //   1793: astore 25
    //   1795: aload 11
    //   1797: astore 26
    //   1799: aload 31
    //   1801: invokevirtual 131	com/miui/calendar/util/r0:r	()I
    //   1804: istore 49
    //   1806: aload_1
    //   1807: astore 21
    //   1809: aload 10
    //   1811: astore 22
    //   1813: aload 11
    //   1815: astore 23
    //   1817: aload_1
    //   1818: astore 24
    //   1820: aload 10
    //   1822: astore 25
    //   1824: aload 11
    //   1826: astore 26
    //   1828: aload 19
    //   1830: aload 31
    //   1832: invokevirtual 249	com/miui/calendar/util/r0:E	(Lcom/miui/calendar/util/r0;)V
    //   1835: iconst_0
    //   1836: istore 50
    //   1838: aload 31
    //   1840: astore 9
    //   1842: iload 35
    //   1844: ifeq +37 -> 1881
    //   1847: aload_1
    //   1848: astore 21
    //   1850: aload 10
    //   1852: astore 22
    //   1854: aload 11
    //   1856: astore 23
    //   1858: aload_1
    //   1859: astore 24
    //   1861: aload 10
    //   1863: astore 25
    //   1865: aload 11
    //   1867: astore 26
    //   1869: aload_2
    //   1870: getfield 62	com/miui/calendar/util/calendarcommon2/EventRecurrence:v	[I
    //   1873: iload 50
    //   1875: iaload
    //   1876: istore 51
    //   1878: goto +7 -> 1885
    //   1881: iload 45
    //   1883: istore 51
    //   1885: iload 36
    //   1887: ifeq +140 -> 2027
    //   1890: iload 14
    //   1892: istore 29
    //   1894: aload 11
    //   1896: astore 24
    //   1898: iload 29
    //   1900: iconst_5
    //   1901: if_icmpne +70 -> 1971
    //   1904: aload 9
    //   1906: invokevirtual 106	com/miui/calendar/util/r0:t	()I
    //   1909: istore 14
    //   1911: aload_2
    //   1912: getfield 281	com/miui/calendar/util/calendarcommon2/EventRecurrence:f	I
    //   1915: invokestatic 283	com/miui/calendar/util/calendarcommon2/EventRecurrence:i	(I)I
    //   1918: istore 52
    //   1920: aload 9
    //   1922: invokevirtual 98	com/miui/calendar/util/r0:q	()I
    //   1925: iload 14
    //   1927: iload 52
    //   1929: isub
    //   1930: bipush 7
    //   1932: iadd
    //   1933: bipush 7
    //   1935: irem
    //   1936: isub
    //   1937: istore 52
    //   1939: iload 52
    //   1941: istore 14
    //   1943: iinc 52 6
    //   1946: aload 9
    //   1948: astore 21
    //   1950: aload 20
    //   1952: astore 26
    //   1954: goto +95 -> 2049
    //   1957: astore 8
    //   1959: goto +36 -> 1995
    //   1962: astore 8
    //   1964: aload 24
    //   1966: astore 26
    //   1968: goto +2067 -> 4035
    //   1971: aload 19
    //   1973: iconst_4
    //   1974: invokevirtual 80	com/miui/calendar/util/r0:g	(I)I
    //   1977: istore 52
    //   1979: iconst_1
    //   1980: istore 14
    //   1982: aload 9
    //   1984: astore 21
    //   1986: aload 20
    //   1988: astore 26
    //   1990: goto +59 -> 2049
    //   1993: astore 8
    //   1995: aload_1
    //   1996: astore 9
    //   1998: aload 8
    //   2000: astore_1
    //   2001: aload 10
    //   2003: astore 25
    //   2005: goto +1952 -> 3957
    //   2008: astore 8
    //   2010: aload_1
    //   2011: astore 11
    //   2013: aload 10
    //   2015: astore_1
    //   2016: aload 11
    //   2018: astore 10
    //   2020: aload 24
    //   2022: astore 26
    //   2024: goto +2021 -> 4045
    //   2027: iconst_1
    //   2028: istore 53
    //   2030: iconst_0
    //   2031: istore 52
    //   2033: aload 20
    //   2035: astore 26
    //   2037: aload 9
    //   2039: astore 21
    //   2041: iload 14
    //   2043: istore 29
    //   2045: iload 53
    //   2047: istore 14
    //   2049: aload_1
    //   2050: astore 23
    //   2052: aload 11
    //   2054: astore 24
    //   2056: iload 36
    //   2058: ifeq +91 -> 2149
    //   2061: aload 10
    //   2063: astore 22
    //   2065: aload 26
    //   2067: astore 42
    //   2069: aload 24
    //   2071: astore 31
    //   2073: aload 23
    //   2075: astore 9
    //   2077: aload 22
    //   2079: astore 25
    //   2081: aload 24
    //   2083: astore 15
    //   2085: aload 23
    //   2087: astore 20
    //   2089: aload 42
    //   2091: aload 21
    //   2093: iload 14
    //   2095: invokevirtual 286	com/miui/calendar/util/calendarcommon2/b$a:b	(Lcom/miui/calendar/util/r0;I)Z
    //   2098: ifne +44 -> 2142
    //   2101: iload 14
    //   2103: iconst_1
    //   2104: iadd
    //   2105: istore 53
    //   2107: iload 30
    //   2109: istore 54
    //   2111: aload 42
    //   2113: astore 26
    //   2115: iload 29
    //   2117: istore 14
    //   2119: iload 32
    //   2121: istore 29
    //   2123: iload 37
    //   2125: istore 32
    //   2127: iload 39
    //   2129: istore 30
    //   2131: iload 18
    //   2133: istore 37
    //   2135: iload 54
    //   2137: istore 39
    //   2139: goto +673 -> 2812
    //   2142: iload 14
    //   2144: istore 55
    //   2146: goto +7 -> 2153
    //   2149: iload 46
    //   2151: istore 55
    //   2153: aload 10
    //   2155: astore 42
    //   2157: iconst_0
    //   2158: istore 56
    //   2160: iload 39
    //   2162: istore 54
    //   2164: iload 37
    //   2166: istore 39
    //   2168: iload 18
    //   2170: istore 53
    //   2172: iload 29
    //   2174: istore 37
    //   2176: iload 30
    //   2178: istore 29
    //   2180: iload 38
    //   2182: ifeq +39 -> 2221
    //   2185: aload 24
    //   2187: astore 31
    //   2189: aload 23
    //   2191: astore 9
    //   2193: aload 42
    //   2195: astore 25
    //   2197: aload 24
    //   2199: astore 15
    //   2201: aload 23
    //   2203: astore 20
    //   2205: aload 42
    //   2207: astore 22
    //   2209: aload_2
    //   2210: getfield 112	com/miui/calendar/util/calendarcommon2/EventRecurrence:k	[I
    //   2213: iload 56
    //   2215: iaload
    //   2216: istore 30
    //   2218: goto +7 -> 2225
    //   2221: iload 47
    //   2223: istore 30
    //   2225: iconst_0
    //   2226: istore 57
    //   2228: iload 54
    //   2230: istore 18
    //   2232: iload 40
    //   2234: ifeq +39 -> 2273
    //   2237: aload 24
    //   2239: astore 31
    //   2241: aload 23
    //   2243: astore 9
    //   2245: aload 42
    //   2247: astore 25
    //   2249: aload 24
    //   2251: astore 15
    //   2253: aload 23
    //   2255: astore 20
    //   2257: aload 42
    //   2259: astore 22
    //   2261: aload_2
    //   2262: getfield 120	com/miui/calendar/util/calendarcommon2/EventRecurrence:i	[I
    //   2265: iload 57
    //   2267: iaload
    //   2268: istore 58
    //   2270: goto +7 -> 2277
    //   2273: iload 48
    //   2275: istore 58
    //   2277: iconst_0
    //   2278: istore 59
    //   2280: iload 53
    //   2282: istore 54
    //   2284: iload 30
    //   2286: istore 53
    //   2288: iload 29
    //   2290: istore 30
    //   2292: iload 41
    //   2294: ifeq +39 -> 2333
    //   2297: aload 24
    //   2299: astore 31
    //   2301: aload 23
    //   2303: astore 9
    //   2305: aload 42
    //   2307: astore 25
    //   2309: aload 24
    //   2311: astore 15
    //   2313: aload 23
    //   2315: astore 20
    //   2317: aload 42
    //   2319: astore 22
    //   2321: aload_2
    //   2322: getfield 126	com/miui/calendar/util/calendarcommon2/EventRecurrence:g	[I
    //   2325: iload 59
    //   2327: iaload
    //   2328: istore 29
    //   2330: goto +7 -> 2337
    //   2333: iload 49
    //   2335: istore 29
    //   2337: aload 24
    //   2339: astore 31
    //   2341: aload 23
    //   2343: astore 9
    //   2345: aload 42
    //   2347: astore 25
    //   2349: aload 24
    //   2351: astore 15
    //   2353: aload 23
    //   2355: astore 20
    //   2357: aload 42
    //   2359: astore 22
    //   2361: aload 19
    //   2363: iload 29
    //   2365: iload 58
    //   2367: iload 53
    //   2369: iload 55
    //   2371: iload 51
    //   2373: iconst_1
    //   2374: isub
    //   2375: iload 30
    //   2377: invokevirtual 290	com/miui/calendar/util/r0:C	(IIIIII)V
    //   2380: aload 24
    //   2382: astore 31
    //   2384: aload 23
    //   2386: astore 9
    //   2388: aload 42
    //   2390: astore 25
    //   2392: aload 24
    //   2394: astore 15
    //   2396: aload 23
    //   2398: astore 20
    //   2400: aload 42
    //   2402: astore 22
    //   2404: aload 19
    //   2406: invokestatic 215	com/miui/calendar/util/calendarcommon2/b:k	(Lcom/miui/calendar/util/r0;)V
    //   2409: aload 24
    //   2411: astore 31
    //   2413: aload 23
    //   2415: astore 9
    //   2417: aload 42
    //   2419: astore 25
    //   2421: aload 24
    //   2423: astore 15
    //   2425: aload 23
    //   2427: astore 20
    //   2429: aload 42
    //   2431: astore 22
    //   2433: aload 19
    //   2435: invokestatic 217	com/miui/calendar/util/calendarcommon2/b:i	(Lcom/miui/calendar/util/r0;)J
    //   2438: lstore 60
    //   2440: lload 60
    //   2442: lload 12
    //   2444: lcmp
    //   2445: iflt +230 -> 2675
    //   2448: aload 24
    //   2450: astore 31
    //   2452: aload 23
    //   2454: astore 9
    //   2456: aload 42
    //   2458: astore 25
    //   2460: aload 24
    //   2462: astore 15
    //   2464: aload 23
    //   2466: astore 20
    //   2468: aload 42
    //   2470: astore 22
    //   2472: aload_2
    //   2473: aload 19
    //   2475: invokestatic 292	com/miui/calendar/util/calendarcommon2/b:c	(Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;Lcom/miui/calendar/util/r0;)I
    //   2478: ifne +197 -> 2675
    //   2481: lload 12
    //   2483: lload 60
    //   2485: lcmp
    //   2486: ifne +27 -> 2513
    //   2489: iload 7
    //   2491: ifeq +22 -> 2513
    //   2494: lload 12
    //   2496: lload_3
    //   2497: lcmp
    //   2498: iflt +15 -> 2513
    //   2501: iload 54
    //   2503: istore 29
    //   2505: lload 12
    //   2507: lload 5
    //   2509: lcmp
    //   2510: iflt +9 -> 2519
    //   2513: iload 54
    //   2515: iconst_1
    //   2516: iadd
    //   2517: istore 29
    //   2519: lload 60
    //   2521: lload 27
    //   2523: lcmp
    //   2524: ifle +6 -> 2530
    //   2527: goto +144 -> 2671
    //   2530: lload 60
    //   2532: lload 5
    //   2534: lcmp
    //   2535: iflt +6 -> 2541
    //   2538: goto +133 -> 2671
    //   2541: lload 60
    //   2543: lload_3
    //   2544: lcmp
    //   2545: iflt +84 -> 2629
    //   2548: iload 7
    //   2550: ifeq +41 -> 2591
    //   2553: aload 24
    //   2555: astore 31
    //   2557: aload 23
    //   2559: astore 9
    //   2561: aload 42
    //   2563: astore 25
    //   2565: aload 24
    //   2567: astore 15
    //   2569: aload 23
    //   2571: astore 20
    //   2573: aload 42
    //   2575: astore 22
    //   2577: aload 8
    //   2579: lload 60
    //   2581: invokestatic 223	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   2584: invokevirtual 229	java/util/TreeSet:add	(Ljava/lang/Object;)Z
    //   2587: pop
    //   2588: goto +41 -> 2629
    //   2591: aload 24
    //   2593: astore 31
    //   2595: aload 23
    //   2597: astore 9
    //   2599: aload 42
    //   2601: astore 25
    //   2603: aload 24
    //   2605: astore 15
    //   2607: aload 23
    //   2609: astore 20
    //   2611: aload 42
    //   2613: astore 22
    //   2615: aload 8
    //   2617: lload 60
    //   2619: invokestatic 223	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   2622: invokevirtual 295	java/util/TreeSet:remove	(Ljava/lang/Object;)Z
    //   2625: pop
    //   2626: goto +3 -> 2629
    //   2629: aload 24
    //   2631: astore 31
    //   2633: aload 23
    //   2635: astore 9
    //   2637: aload 42
    //   2639: astore 25
    //   2641: aload 24
    //   2643: astore 15
    //   2645: aload 23
    //   2647: astore 20
    //   2649: aload 42
    //   2651: astore 22
    //   2653: aload_2
    //   2654: getfield 239	com/miui/calendar/util/calendarcommon2/EventRecurrence:d	I
    //   2657: istore 54
    //   2659: iload 54
    //   2661: ifle +11 -> 2672
    //   2664: iload 54
    //   2666: iload 29
    //   2668: if_icmpne +4 -> 2672
    //   2671: return
    //   2672: goto +7 -> 2679
    //   2675: iload 54
    //   2677: istore 29
    //   2679: iinc 59 1
    //   2682: iload 41
    //   2684: ifeq +20 -> 2704
    //   2687: iload 59
    //   2689: iload 32
    //   2691: if_icmplt +6 -> 2697
    //   2694: goto +10 -> 2704
    //   2697: iload 29
    //   2699: istore 54
    //   2701: goto -409 -> 2292
    //   2704: iinc 57 1
    //   2707: iload 40
    //   2709: ifeq +32 -> 2741
    //   2712: iload 57
    //   2714: iload 18
    //   2716: if_icmplt +6 -> 2722
    //   2719: goto +22 -> 2741
    //   2722: iload 30
    //   2724: istore 54
    //   2726: iload 53
    //   2728: istore 30
    //   2730: iload 29
    //   2732: istore 53
    //   2734: iload 54
    //   2736: istore 29
    //   2738: goto -506 -> 2232
    //   2741: iinc 56 1
    //   2744: iload 39
    //   2746: istore 54
    //   2748: iload 38
    //   2750: ifeq +32 -> 2782
    //   2753: iload 56
    //   2755: iload 54
    //   2757: if_icmplt +6 -> 2763
    //   2760: goto +22 -> 2782
    //   2763: iload 54
    //   2765: istore 39
    //   2767: iload 29
    //   2769: istore 53
    //   2771: iload 30
    //   2773: istore 29
    //   2775: iload 18
    //   2777: istore 54
    //   2779: goto -599 -> 2180
    //   2782: iload 14
    //   2784: iconst_1
    //   2785: iadd
    //   2786: istore 53
    //   2788: iload 37
    //   2790: istore 14
    //   2792: iload 30
    //   2794: istore 39
    //   2796: iload 29
    //   2798: istore 37
    //   2800: iload 32
    //   2802: istore 29
    //   2804: iload 18
    //   2806: istore 30
    //   2808: iload 54
    //   2810: istore 32
    //   2812: iload 36
    //   2814: ifeq +52 -> 2866
    //   2817: iload 53
    //   2819: iload 52
    //   2821: if_icmple +6 -> 2827
    //   2824: goto +42 -> 2866
    //   2827: iload 32
    //   2829: istore 55
    //   2831: iload 30
    //   2833: istore 54
    //   2835: iload 29
    //   2837: istore 32
    //   2839: iload 39
    //   2841: istore 30
    //   2843: iload 14
    //   2845: istore 29
    //   2847: iload 53
    //   2849: istore 14
    //   2851: iload 37
    //   2853: istore 18
    //   2855: iload 55
    //   2857: istore 37
    //   2859: iload 54
    //   2861: istore 39
    //   2863: goto -814 -> 2049
    //   2866: iinc 50 1
    //   2869: iload 35
    //   2871: ifeq +59 -> 2930
    //   2874: iload 50
    //   2876: iload 34
    //   2878: if_icmplt +6 -> 2884
    //   2881: goto +49 -> 2930
    //   2884: iload 32
    //   2886: istore 53
    //   2888: iload 30
    //   2890: istore 52
    //   2892: iload 39
    //   2894: istore 30
    //   2896: aload 24
    //   2898: astore 11
    //   2900: aload 23
    //   2902: astore_1
    //   2903: aload 21
    //   2905: astore 9
    //   2907: iload 37
    //   2909: istore 18
    //   2911: iload 29
    //   2913: istore 32
    //   2915: aload 26
    //   2917: astore 20
    //   2919: iload 53
    //   2921: istore 37
    //   2923: iload 52
    //   2925: istore 39
    //   2927: goto -1085 -> 1842
    //   2930: aload 24
    //   2932: astore 31
    //   2934: aload 23
    //   2936: astore 9
    //   2938: aload 10
    //   2940: astore 25
    //   2942: aload 24
    //   2944: astore 15
    //   2946: aload 23
    //   2948: astore 20
    //   2950: aload 10
    //   2952: astore 22
    //   2954: aload 21
    //   2956: invokevirtual 98	com/miui/calendar/util/r0:q	()I
    //   2959: istore 45
    //   2961: aload 24
    //   2963: astore 31
    //   2965: aload 23
    //   2967: astore 9
    //   2969: aload 10
    //   2971: astore 25
    //   2973: aload 24
    //   2975: astore 15
    //   2977: aload 23
    //   2979: astore 20
    //   2981: aload 10
    //   2983: astore 22
    //   2985: aload 19
    //   2987: aload 21
    //   2989: invokevirtual 249	com/miui/calendar/util/r0:E	(Lcom/miui/calendar/util/r0;)V
    //   2992: iconst_1
    //   2993: istore 18
    //   2995: iload 36
    //   2997: istore 39
    //   2999: iload 33
    //   3001: iload 18
    //   3003: imul
    //   3004: istore 36
    //   3006: iload 43
    //   3008: tableswitch	default:+48 -> 3056, 1:+359->3367, 2:+319->3327, 3:+279->3287, 4:+239->3247, 5:+199->3207, 6:+159->3167, 7:+119->3127, 8:+79->3087
    //   3057: dload 58
    //   3059: lload_1
    //   3060: aload 23
    //   3062: astore 9
    //   3064: aload 10
    //   3066: astore 25
    //   3068: aload 24
    //   3070: astore 15
    //   3072: aload 23
    //   3074: astore 20
    //   3076: aload 10
    //   3078: astore 22
    //   3080: new 169	java/lang/RuntimeException
    //   3083: astore_1
    //   3084: goto +482 -> 3566
    //   3087: aload 24
    //   3089: astore 31
    //   3091: aload 23
    //   3093: astore 9
    //   3095: aload 10
    //   3097: astore 25
    //   3099: aload 24
    //   3101: astore 15
    //   3103: aload 23
    //   3105: astore 20
    //   3107: aload 10
    //   3109: astore 22
    //   3111: aload 21
    //   3113: aload 21
    //   3115: invokevirtual 98	com/miui/calendar/util/r0:q	()I
    //   3118: iload 36
    //   3120: iadd
    //   3121: invokevirtual 189	com/miui/calendar/util/r0:J	(I)V
    //   3124: goto +280 -> 3404
    //   3127: aload 24
    //   3129: astore 31
    //   3131: aload 23
    //   3133: astore 9
    //   3135: aload 10
    //   3137: astore 25
    //   3139: aload 24
    //   3141: astore 15
    //   3143: aload 23
    //   3145: astore 20
    //   3147: aload 10
    //   3149: astore 22
    //   3151: aload 21
    //   3153: aload 21
    //   3155: invokevirtual 98	com/miui/calendar/util/r0:q	()I
    //   3158: iload 36
    //   3160: iadd
    //   3161: invokevirtual 189	com/miui/calendar/util/r0:J	(I)V
    //   3164: goto +240 -> 3404
    //   3167: aload 24
    //   3169: astore 31
    //   3171: aload 23
    //   3173: astore 9
    //   3175: aload 10
    //   3177: astore 25
    //   3179: aload 24
    //   3181: astore 15
    //   3183: aload 23
    //   3185: astore 20
    //   3187: aload 10
    //   3189: astore 22
    //   3191: aload 21
    //   3193: aload 21
    //   3195: invokevirtual 179	com/miui/calendar/util/r0:v	()I
    //   3198: iload 36
    //   3200: iadd
    //   3201: invokevirtual 184	com/miui/calendar/util/r0:N	(I)V
    //   3204: goto +200 -> 3404
    //   3207: aload 24
    //   3209: astore 31
    //   3211: aload 23
    //   3213: astore 9
    //   3215: aload 10
    //   3217: astore 25
    //   3219: aload 24
    //   3221: astore 15
    //   3223: aload 23
    //   3225: astore 20
    //   3227: aload 10
    //   3229: astore 22
    //   3231: aload 21
    //   3233: aload 21
    //   3235: invokevirtual 66	com/miui/calendar/util/r0:p	()I
    //   3238: iload 36
    //   3240: iadd
    //   3241: invokevirtual 186	com/miui/calendar/util/r0:I	(I)V
    //   3244: goto +160 -> 3404
    //   3247: aload 24
    //   3249: astore 31
    //   3251: aload 23
    //   3253: astore 9
    //   3255: aload 10
    //   3257: astore 25
    //   3259: aload 24
    //   3261: astore 15
    //   3263: aload 23
    //   3265: astore 20
    //   3267: aload 10
    //   3269: astore 22
    //   3271: aload 21
    //   3273: aload 21
    //   3275: invokevirtual 98	com/miui/calendar/util/r0:q	()I
    //   3278: iload 36
    //   3280: iadd
    //   3281: invokevirtual 189	com/miui/calendar/util/r0:J	(I)V
    //   3284: goto +120 -> 3404
    //   3287: aload 24
    //   3289: astore 31
    //   3291: aload 23
    //   3293: astore 9
    //   3295: aload 10
    //   3297: astore 25
    //   3299: aload 24
    //   3301: astore 15
    //   3303: aload 23
    //   3305: astore 20
    //   3307: aload 10
    //   3309: astore 22
    //   3311: aload 21
    //   3313: aload 21
    //   3315: invokevirtual 117	com/miui/calendar/util/r0:m	()I
    //   3318: iload 36
    //   3320: iadd
    //   3321: invokevirtual 192	com/miui/calendar/util/r0:F	(I)V
    //   3324: goto +80 -> 3404
    //   3327: aload 24
    //   3329: astore 31
    //   3331: aload 23
    //   3333: astore 9
    //   3335: aload 10
    //   3337: astore 25
    //   3339: aload 24
    //   3341: astore 15
    //   3343: aload 23
    //   3345: astore 20
    //   3347: aload 10
    //   3349: astore 22
    //   3351: aload 21
    //   3353: aload 21
    //   3355: invokevirtual 125	com/miui/calendar/util/r0:o	()I
    //   3358: iload 36
    //   3360: iadd
    //   3361: invokevirtual 195	com/miui/calendar/util/r0:H	(I)V
    //   3364: goto +40 -> 3404
    //   3367: aload 24
    //   3369: astore 31
    //   3371: aload 23
    //   3373: astore 9
    //   3375: aload 10
    //   3377: astore 25
    //   3379: aload 24
    //   3381: astore 15
    //   3383: aload 23
    //   3385: astore 20
    //   3387: aload 10
    //   3389: astore 22
    //   3391: aload 21
    //   3393: aload 21
    //   3395: invokevirtual 131	com/miui/calendar/util/r0:r	()I
    //   3398: iload 36
    //   3400: iadd
    //   3401: invokevirtual 200	com/miui/calendar/util/r0:K	(I)V
    //   3404: aload 24
    //   3406: astore 31
    //   3408: aload 23
    //   3410: astore 9
    //   3412: aload 10
    //   3414: astore 25
    //   3416: aload 24
    //   3418: astore 15
    //   3420: aload 23
    //   3422: astore 20
    //   3424: aload 10
    //   3426: astore 22
    //   3428: aload 21
    //   3430: invokestatic 215	com/miui/calendar/util/calendarcommon2/b:k	(Lcom/miui/calendar/util/r0;)V
    //   3433: iload 43
    //   3435: bipush 6
    //   3437: if_icmpeq +12 -> 3449
    //   3440: iload 43
    //   3442: iconst_5
    //   3443: if_icmpeq +6 -> 3449
    //   3446: goto +37 -> 3483
    //   3449: aload 24
    //   3451: astore 31
    //   3453: aload 23
    //   3455: astore 9
    //   3457: aload 10
    //   3459: astore 25
    //   3461: aload 24
    //   3463: astore 15
    //   3465: aload 23
    //   3467: astore 20
    //   3469: aload 10
    //   3471: astore 22
    //   3473: aload 21
    //   3475: invokevirtual 98	com/miui/calendar/util/r0:q	()I
    //   3478: iload 45
    //   3480: if_icmpne +49 -> 3529
    //   3483: iload 32
    //   3485: istore 45
    //   3487: iload 29
    //   3489: istore 32
    //   3491: aload 23
    //   3493: astore_1
    //   3494: aload 24
    //   3496: astore 11
    //   3498: iload 44
    //   3500: istore 29
    //   3502: iload 39
    //   3504: istore 36
    //   3506: aload 21
    //   3508: astore 31
    //   3510: iload 37
    //   3512: istore 18
    //   3514: aload 26
    //   3516: astore 20
    //   3518: iload 45
    //   3520: istore 37
    //   3522: iload 30
    //   3524: istore 39
    //   3526: goto -2205 -> 1321
    //   3529: iinc 18 1
    //   3532: aload 24
    //   3534: astore 31
    //   3536: aload 23
    //   3538: astore 9
    //   3540: aload 10
    //   3542: astore 25
    //   3544: aload 24
    //   3546: astore 15
    //   3548: aload 23
    //   3550: astore 20
    //   3552: aload 10
    //   3554: astore 22
    //   3556: aload 21
    //   3558: aload 19
    //   3560: invokevirtual 249	com/miui/calendar/util/r0:E	(Lcom/miui/calendar/util/r0;)V
    //   3563: goto -564 -> 2999
    //   3566: aload 24
    //   3568: astore 31
    //   3570: aload 23
    //   3572: astore 9
    //   3574: aload 10
    //   3576: astore 25
    //   3578: aload 24
    //   3580: astore 15
    //   3582: aload 23
    //   3584: astore 20
    //   3586: aload 10
    //   3588: astore 22
    //   3590: new 40	java/lang/StringBuilder
    //   3593: astore 8
    //   3595: aload 24
    //   3597: astore 31
    //   3599: aload 23
    //   3601: astore 9
    //   3603: aload 10
    //   3605: astore 25
    //   3607: aload 24
    //   3609: astore 15
    //   3611: aload 23
    //   3613: astore 20
    //   3615: aload 10
    //   3617: astore 22
    //   3619: aload 8
    //   3621: invokespecial 41	java/lang/StringBuilder:<init>	()V
    //   3624: aload 24
    //   3626: astore 31
    //   3628: aload 23
    //   3630: astore 9
    //   3632: aload 10
    //   3634: astore 25
    //   3636: aload 24
    //   3638: astore 15
    //   3640: aload 23
    //   3642: astore 20
    //   3644: aload 10
    //   3646: astore 22
    //   3648: aload 8
    //   3650: ldc_w 297
    //   3653: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3656: pop
    //   3657: aload 24
    //   3659: astore 31
    //   3661: aload 23
    //   3663: astore 9
    //   3665: aload 10
    //   3667: astore 25
    //   3669: aload 24
    //   3671: astore 15
    //   3673: aload 23
    //   3675: astore 20
    //   3677: aload 10
    //   3679: astore 22
    //   3681: aload 8
    //   3683: iload 43
    //   3685: invokevirtual 300	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   3688: pop
    //   3689: aload 24
    //   3691: astore 31
    //   3693: aload 23
    //   3695: astore 9
    //   3697: aload 10
    //   3699: astore 25
    //   3701: aload 24
    //   3703: astore 15
    //   3705: aload 23
    //   3707: astore 20
    //   3709: aload 10
    //   3711: astore 22
    //   3713: aload_1
    //   3714: aload 8
    //   3716: invokevirtual 157	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   3719: invokespecial 172	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   3722: aload 24
    //   3724: astore 31
    //   3726: aload 23
    //   3728: astore 9
    //   3730: aload 10
    //   3732: astore 25
    //   3734: aload 24
    //   3736: astore 15
    //   3738: aload 23
    //   3740: astore 20
    //   3742: aload 10
    //   3744: astore 22
    //   3746: aload_1
    //   3747: athrow
    //   3748: aload 8
    //   3750: astore 31
    //   3752: aload_1
    //   3753: astore 9
    //   3755: aload 10
    //   3757: astore 25
    //   3759: aload 8
    //   3761: astore 15
    //   3763: aload_1
    //   3764: astore 20
    //   3766: aload 10
    //   3768: astore 22
    //   3770: new 40	java/lang/StringBuilder
    //   3773: astore 11
    //   3775: aload 8
    //   3777: astore 31
    //   3779: aload_1
    //   3780: astore 9
    //   3782: aload 10
    //   3784: astore 25
    //   3786: aload 8
    //   3788: astore 15
    //   3790: aload_1
    //   3791: astore 20
    //   3793: aload 10
    //   3795: astore 22
    //   3797: aload 11
    //   3799: invokespecial 41	java/lang/StringBuilder:<init>	()V
    //   3802: aload 8
    //   3804: astore 31
    //   3806: aload_1
    //   3807: astore 9
    //   3809: aload 10
    //   3811: astore 25
    //   3813: aload 8
    //   3815: astore 15
    //   3817: aload_1
    //   3818: astore 20
    //   3820: aload 10
    //   3822: astore 22
    //   3824: aload 11
    //   3826: ldc_w 302
    //   3829: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3832: pop
    //   3833: aload 8
    //   3835: astore 31
    //   3837: aload_1
    //   3838: astore 9
    //   3840: aload 10
    //   3842: astore 25
    //   3844: aload 8
    //   3846: astore 15
    //   3848: aload_1
    //   3849: astore 20
    //   3851: aload 10
    //   3853: astore 22
    //   3855: aload 11
    //   3857: iload 30
    //   3859: invokevirtual 300	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   3862: pop
    //   3863: aload 8
    //   3865: astore 31
    //   3867: aload_1
    //   3868: astore 9
    //   3870: aload 10
    //   3872: astore 25
    //   3874: aload 8
    //   3876: astore 15
    //   3878: aload_1
    //   3879: astore 20
    //   3881: aload 10
    //   3883: astore 22
    //   3885: aload 24
    //   3887: aload 11
    //   3889: invokevirtual 157	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   3892: invokespecial 242	com/miui/calendar/util/calendarcommon2/DateException:<init>	(Ljava/lang/String;)V
    //   3895: aload 8
    //   3897: astore 31
    //   3899: aload_1
    //   3900: astore 9
    //   3902: aload 10
    //   3904: astore 25
    //   3906: aload 8
    //   3908: astore 15
    //   3910: aload_1
    //   3911: astore 20
    //   3913: aload 10
    //   3915: astore 22
    //   3917: aload 24
    //   3919: athrow
    //   3920: astore_1
    //   3921: aload 31
    //   3923: astore 24
    //   3925: goto +32 -> 3957
    //   3928: astore 8
    //   3930: aload 15
    //   3932: astore 26
    //   3934: aload 20
    //   3936: astore 10
    //   3938: aload 22
    //   3940: astore_1
    //   3941: goto +104 -> 4045
    //   3944: astore_1
    //   3945: aload 22
    //   3947: astore 25
    //   3949: aload 23
    //   3951: astore 24
    //   3953: aload 21
    //   3955: astore 9
    //   3957: new 40	java/lang/StringBuilder
    //   3960: dup
    //   3961: invokespecial 41	java/lang/StringBuilder:<init>	()V
    //   3964: astore 8
    //   3966: aload 8
    //   3968: ldc_w 304
    //   3971: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3974: pop
    //   3975: aload 8
    //   3977: aload_2
    //   3978: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   3981: pop
    //   3982: aload 8
    //   3984: aload 25
    //   3986: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3989: pop
    //   3990: aload 8
    //   3992: lload_3
    //   3993: invokevirtual 277	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   3996: pop
    //   3997: aload 8
    //   3999: aload 9
    //   4001: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   4004: pop
    //   4005: aload 8
    //   4007: lload 5
    //   4009: invokevirtual 277	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   4012: pop
    //   4013: aload 24
    //   4015: aload 8
    //   4017: invokevirtual 157	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   4020: invokestatic 279	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   4023: pop
    //   4024: aload_1
    //   4025: athrow
    //   4026: astore 8
    //   4028: aload 25
    //   4030: astore 10
    //   4032: aload 24
    //   4034: astore_1
    //   4035: aload_1
    //   4036: astore 11
    //   4038: aload 10
    //   4040: astore_1
    //   4041: aload 11
    //   4043: astore 10
    //   4045: new 40	java/lang/StringBuilder
    //   4048: dup
    //   4049: invokespecial 41	java/lang/StringBuilder:<init>	()V
    //   4052: astore 11
    //   4054: aload 11
    //   4056: ldc_w 306
    //   4059: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   4062: pop
    //   4063: aload 11
    //   4065: aload_2
    //   4066: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   4069: pop
    //   4070: aload 11
    //   4072: aload_1
    //   4073: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   4076: pop
    //   4077: aload 11
    //   4079: lload_3
    //   4080: invokevirtual 277	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   4083: pop
    //   4084: aload 11
    //   4086: aload 10
    //   4088: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   4091: pop
    //   4092: aload 11
    //   4094: lload 5
    //   4096: invokevirtual 277	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   4099: pop
    //   4100: aload 26
    //   4102: aload 11
    //   4104: invokevirtual 157	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   4107: invokestatic 279	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   4110: pop
    //   4111: aload 8
    //   4113: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	4114	0	this	b
    //   0	4114	1	paramr0	r0
    //   0	4114	2	paramEventRecurrence	EventRecurrence
    //   0	4114	3	paramLong1	long
    //   0	4114	5	paramLong2	long
    //   0	4114	7	paramBoolean	boolean
    //   0	4114	8	paramTreeSet	TreeSet<Long>
    //   2	3998	9	localObject1	Object
    //   6	4081	10	localObject2	Object
    //   10	4093	11	localObject3	Object
    //   20	2486	12	l1	long
    //   54	2796	14	i	int
    //   66	3865	15	localObject4	Object
    //   72	1164	16	localr01	r0
    //   78	1227	17	localStringBuilder	StringBuilder
    //   82	3448	18	j	int
    //   88	3471	19	localr02	r0
    //   94	3841	20	localObject5	Object
    //   98	3856	21	localObject6	Object
    //   102	3844	22	localObject7	Object
    //   106	3844	23	localObject8	Object
    //   110	3923	24	localObject9	Object
    //   114	3915	25	localObject10	Object
    //   118	3983	26	localObject11	Object
    //   129	2393	27	l2	long
    //   317	3184	29	k	int
    //   347	3511	30	m	int
    //   409	3513	31	localObject12	Object
    //   471	3019	32	n	int
    //   501	2503	33	i1	int
    //   539	2340	34	i2	int
    //   574	2296	35	bool1	boolean
    //   645	2860	36	i3	int
    //   681	2840	37	i4	int
    //   715	2034	38	bool2	boolean
    //   745	2780	39	i5	int
    //   779	1929	40	bool3	boolean
    //   843	1840	41	bool4	boolean
    //   944	1706	42	localObject13	Object
    //   948	2736	43	i6	int
    //   1325	2174	44	i7	int
    //   1688	1831	45	i8	int
    //   1717	433	46	i9	int
    //   1746	476	47	i10	int
    //   1775	499	48	i11	int
    //   1804	530	49	i12	int
    //   1836	1043	50	i13	int
    //   1876	499	51	i14	int
    //   1918	1006	52	i15	int
    //   2028	892	53	i16	int
    //   2109	751	54	i17	int
    //   2144	712	55	i18	int
    //   2158	600	56	i19	int
    //   2226	491	57	i20	int
    //   2268	98	58	i21	int
    //   2278	414	59	i22	int
    //   2438	180	60	l3	long
    // Exception table:
    //   from	to	target	type
    //   1904	1911	1957	java/lang/RuntimeException
    //   1904	1911	1962	com/miui/calendar/util/calendarcommon2/DateException
    //   1911	1939	1993	java/lang/RuntimeException
    //   1971	1979	1993	java/lang/RuntimeException
    //   1911	1939	2008	com/miui/calendar/util/calendarcommon2/DateException
    //   1971	1979	2008	com/miui/calendar/util/calendarcommon2/DateException
    //   429	434	3920	java/lang/RuntimeException
    //   2089	2101	3920	java/lang/RuntimeException
    //   2209	2218	3920	java/lang/RuntimeException
    //   2261	2270	3920	java/lang/RuntimeException
    //   2321	2330	3920	java/lang/RuntimeException
    //   2361	2380	3920	java/lang/RuntimeException
    //   2404	2409	3920	java/lang/RuntimeException
    //   2433	2440	3920	java/lang/RuntimeException
    //   2472	2481	3920	java/lang/RuntimeException
    //   2577	2588	3920	java/lang/RuntimeException
    //   2615	2626	3920	java/lang/RuntimeException
    //   2653	2659	3920	java/lang/RuntimeException
    //   2954	2961	3920	java/lang/RuntimeException
    //   2985	2992	3920	java/lang/RuntimeException
    //   3080	3084	3920	java/lang/RuntimeException
    //   3111	3124	3920	java/lang/RuntimeException
    //   3151	3164	3920	java/lang/RuntimeException
    //   3191	3204	3920	java/lang/RuntimeException
    //   3231	3244	3920	java/lang/RuntimeException
    //   3271	3284	3920	java/lang/RuntimeException
    //   3311	3324	3920	java/lang/RuntimeException
    //   3351	3364	3920	java/lang/RuntimeException
    //   3391	3404	3920	java/lang/RuntimeException
    //   3428	3433	3920	java/lang/RuntimeException
    //   3473	3483	3920	java/lang/RuntimeException
    //   3556	3563	3920	java/lang/RuntimeException
    //   3590	3595	3920	java/lang/RuntimeException
    //   3619	3624	3920	java/lang/RuntimeException
    //   3648	3657	3920	java/lang/RuntimeException
    //   3681	3689	3920	java/lang/RuntimeException
    //   3713	3722	3920	java/lang/RuntimeException
    //   3746	3748	3920	java/lang/RuntimeException
    //   3770	3775	3920	java/lang/RuntimeException
    //   3797	3802	3920	java/lang/RuntimeException
    //   3824	3833	3920	java/lang/RuntimeException
    //   3855	3863	3920	java/lang/RuntimeException
    //   3885	3895	3920	java/lang/RuntimeException
    //   3917	3920	3920	java/lang/RuntimeException
    //   429	434	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   2089	2101	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   2209	2218	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   2261	2270	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   2321	2330	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   2361	2380	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   2404	2409	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   2433	2440	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   2472	2481	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   2577	2588	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   2615	2626	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   2653	2659	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   2954	2961	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   2985	2992	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3080	3084	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3111	3124	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3151	3164	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3191	3204	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3231	3244	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3271	3284	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3311	3324	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3351	3364	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3391	3404	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3428	3433	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3473	3483	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3556	3563	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3590	3595	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3619	3624	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3648	3657	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3681	3689	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3713	3722	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3746	3748	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3770	3775	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3797	3802	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3824	3833	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3855	3863	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3885	3895	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   3917	3920	3928	com/miui/calendar/util/calendarcommon2/DateException
    //   120	126	3944	java/lang/RuntimeException
    //   164	171	3944	java/lang/RuntimeException
    //   195	202	3944	java/lang/RuntimeException
    //   229	233	3944	java/lang/RuntimeException
    //   257	263	3944	java/lang/RuntimeException
    //   287	289	3944	java/lang/RuntimeException
    //   313	319	3944	java/lang/RuntimeException
    //   343	349	3944	java/lang/RuntimeException
    //   535	541	3944	java/lang/RuntimeException
    //   565	576	3944	java/lang/RuntimeException
    //   606	613	3944	java/lang/RuntimeException
    //   637	644	3944	java/lang/RuntimeException
    //   677	683	3944	java/lang/RuntimeException
    //   707	717	3944	java/lang/RuntimeException
    //   741	747	3944	java/lang/RuntimeException
    //   771	781	3944	java/lang/RuntimeException
    //   805	811	3944	java/lang/RuntimeException
    //   835	845	3944	java/lang/RuntimeException
    //   869	875	3944	java/lang/RuntimeException
    //   910	916	3944	java/lang/RuntimeException
    //   940	946	3944	java/lang/RuntimeException
    //   983	993	3944	java/lang/RuntimeException
    //   1017	1022	3944	java/lang/RuntimeException
    //   1046	1051	3944	java/lang/RuntimeException
    //   1075	1083	3944	java/lang/RuntimeException
    //   1107	1115	3944	java/lang/RuntimeException
    //   1139	1146	3944	java/lang/RuntimeException
    //   1170	1178	3944	java/lang/RuntimeException
    //   1202	1211	3944	java/lang/RuntimeException
    //   1235	1242	3944	java/lang/RuntimeException
    //   1273	1280	3944	java/lang/RuntimeException
    //   1304	1311	3944	java/lang/RuntimeException
    //   1357	1362	3944	java/lang/RuntimeException
    //   1384	1389	3944	java/lang/RuntimeException
    //   1411	1420	3944	java/lang/RuntimeException
    //   1442	1449	3944	java/lang/RuntimeException
    //   1471	1479	3944	java/lang/RuntimeException
    //   1501	1508	3944	java/lang/RuntimeException
    //   1530	1537	3944	java/lang/RuntimeException
    //   1559	1567	3944	java/lang/RuntimeException
    //   1589	1600	3944	java/lang/RuntimeException
    //   1625	1630	3944	java/lang/RuntimeException
    //   1652	1659	3944	java/lang/RuntimeException
    //   1681	1690	3944	java/lang/RuntimeException
    //   1712	1719	3944	java/lang/RuntimeException
    //   1741	1748	3944	java/lang/RuntimeException
    //   1770	1777	3944	java/lang/RuntimeException
    //   1799	1806	3944	java/lang/RuntimeException
    //   1828	1835	3944	java/lang/RuntimeException
    //   1869	1878	3944	java/lang/RuntimeException
    //   120	126	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   164	171	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   195	202	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   229	233	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   257	263	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   287	289	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   313	319	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   343	349	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   535	541	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   565	576	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   606	613	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   637	644	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   677	683	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   707	717	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   741	747	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   771	781	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   805	811	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   835	845	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   869	875	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   910	916	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   940	946	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   983	993	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1017	1022	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1046	1051	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1075	1083	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1107	1115	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1139	1146	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1170	1178	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1202	1211	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1235	1242	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1273	1280	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1304	1311	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1357	1362	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1384	1389	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1411	1420	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1442	1449	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1471	1479	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1501	1508	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1530	1537	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1559	1567	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1589	1600	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1625	1630	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1652	1659	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1681	1690	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1712	1719	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1741	1748	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1770	1777	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1799	1806	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1828	1835	4026	com/miui/calendar/util/calendarcommon2/DateException
    //   1869	1878	4026	com/miui/calendar/util/calendarcommon2/DateException
  }
  
  public long[] b(r0 paramr0, c paramc, long paramLong1, long paramLong2)
    throws DateException
  {
    Object localObject = paramr0.s();
    this.a.c((String)localObject);
    this.d.c((String)localObject);
    this.a.D(paramLong1);
    long l = i(this.a);
    if (paramLong2 != -1L)
    {
      this.a.D(paramLong2);
      paramLong1 = i(this.a);
    }
    else
    {
      paramLong1 = 9223372036854775807L;
    }
    TreeSet localTreeSet = new TreeSet();
    localObject = paramc.a;
    int j;
    if (localObject != null)
    {
      i = localObject.length;
      for (j = 0; j < i; j++) {
        a(paramr0, localObject[j], l, paramLong1, true, localTreeSet);
      }
    }
    localObject = paramc.b;
    if (localObject != null)
    {
      j = localObject.length;
      for (i = 0; i < j; i++)
      {
        paramLong2 = localObject[i];
        this.a.D(paramLong2);
        localTreeSet.add(Long.valueOf(i(this.a)));
      }
    }
    localObject = paramc.c;
    if (localObject != null)
    {
      i = localObject.length;
      for (j = 0; j < i; j++) {
        a(paramr0, localObject[j], l, paramLong1, false, localTreeSet);
      }
    }
    paramr0 = paramc.d;
    if (paramr0 != null)
    {
      j = paramr0.length;
      for (i = 0; i < j; i++)
      {
        paramLong1 = paramr0[i];
        this.a.D(paramLong1);
        localTreeSet.remove(Long.valueOf(i(this.a)));
      }
    }
    if (localTreeSet.isEmpty()) {
      return new long[0];
    }
    int i = 0;
    paramr0 = new long[localTreeSet.size()];
    paramc = localTreeSet.iterator();
    while (paramc.hasNext())
    {
      localObject = (Long)paramc.next();
      j(this.a, ((Long)localObject).longValue());
      j = i + 1;
      paramr0[i] = this.a.P(true);
      i = j;
    }
    return paramr0;
  }
  
  public static class a
  {
    private EventRecurrence a;
    private int b;
    private r0 c = new r0("UTC");
    private int d;
    private int e;
    
    public a(boolean paramBoolean) {}
    
    private static int a(r0 paramr0, EventRecurrence paramEventRecurrence)
    {
      int i = paramr0.g(4);
      int j = paramEventRecurrence.o;
      int k = 0;
      int i1;
      int i2;
      int i4;
      if (j > 0)
      {
        for (m = paramr0.q(); m >= 8; m -= 7) {}
        n = paramr0.t();
        if (n >= m) {
          i1 = n - m + 1;
        } else {
          i1 = n - m + 8;
        }
        paramr0 = paramEventRecurrence.m;
        int[] arrayOfInt = paramEventRecurrence.n;
        i2 = 0;
        for (n = i2;; n = m)
        {
          m = n;
          if (i2 >= j) {
            break;
          }
          int i3 = arrayOfInt[i2];
          i4 = EventRecurrence.i(paramr0[i2]) - i1 + 1;
          m = i4;
          if (i4 <= 0) {
            m = i4 + 7;
          }
          if (i3 == 0) {
            for (i4 = m;; i4 += 7)
            {
              m = n;
              if (i4 > i) {
                break;
              }
              n |= 1 << i4;
            }
          }
          i4 = m;
          if (i3 > 0)
          {
            i4 = m + (i3 - 1) * 7;
            m = n;
            if (i4 > i) {}
          }
          else
          {
            for (m = i4;; m = i4)
            {
              m = n | 1 << m;
              break;
              while (i4 <= i) {
                i4 += 7;
              }
              i4 += i3 * 7;
              m = n;
              if (i4 < 1) {
                break;
              }
            }
          }
          i2++;
        }
      }
      int m = 0;
      int n = m;
      if (paramEventRecurrence.b > 5)
      {
        i4 = paramEventRecurrence.q;
        n = m;
        if (i4 != 0)
        {
          paramr0 = paramEventRecurrence.p;
          if (paramEventRecurrence.o == 0)
          {
            i1 = k;
            for (;;)
            {
              n = m;
              if (i1 >= i4) {
                break;
              }
              n = paramr0[i1];
              if (n >= 0) {}
              for (;;)
              {
                n = m | 1 << n;
                break;
                i2 = n + i + 1;
                n = m;
                if (i2 < 1) {
                  break;
                }
                n = m;
                if (i2 > i) {
                  break;
                }
                n = i2;
              }
              i1++;
              m = n;
            }
          }
          i1 = 1;
          for (;;)
          {
            n = m;
            if (i1 > i) {
              break;
            }
            i2 = 1 << i1;
            n = m;
            if ((m & i2) != 0)
            {
              for (n = 0; n < i4; n++) {
                if (paramr0[n] == i1)
                {
                  n = m;
                  break label462;
                }
              }
              n = m & i2;
            }
            label462:
            i1++;
            m = n;
          }
        }
      }
      return n;
    }
    
    boolean b(r0 paramr0, int paramInt)
    {
      int i = paramr0.v();
      int j = paramr0.p();
      boolean bool = true;
      if ((paramInt >= 1) && (paramInt <= 28))
      {
        paramr0 = null;
      }
      else
      {
        paramr0 = this.c;
        paramr0.B(paramInt, j, i);
        b.k(paramr0);
        i = paramr0.v();
        j = paramr0.p();
        paramInt = paramr0.q();
      }
      if ((i != this.d) || (j != this.e))
      {
        r0 localr0 = paramr0;
        if (paramr0 == null)
        {
          localr0 = this.c;
          localr0.B(paramInt, j, i);
          b.k(localr0);
        }
        this.d = i;
        this.e = j;
        this.b = a(localr0, this.a);
      }
      if ((this.b & 1 << paramInt) == 0) {
        bool = false;
      }
      return bool;
    }
    
    void c(EventRecurrence paramEventRecurrence)
    {
      this.d = 0;
      this.e = -1;
      this.a = paramEventRecurrence;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.calendarcommon2.b
 * JD-Core Version:    0.7.0.1
 */