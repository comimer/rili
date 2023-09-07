package com.miui.calendar.holiday.utils;

import android.content.Context;
import java.io.Serializable;
import java.util.TimeZone;
import miuix.core.util.e;
import miuix.core.util.e.e;

public class Calendar
  implements Serializable, Cloneable, Comparable<Calendar>
{
  public static final int AD = 1;
  public static final int AFTERNOON = 4;
  public static final int AM = 0;
  public static final int AM_PM = 17;
  public static final int APRIL = 3;
  public static final int AUGUST = 7;
  public static final int AUTUMN_BEGINS = 15;
  public static final int AUTUMN_EQUINOX = 18;
  public static final int BC = 0;
  public static final int CHICKEN = 9;
  public static final int CHINESE_ERA_DAY = 11;
  public static final int CHINESE_ERA_HOUR = 19;
  public static final int CHINESE_ERA_MONTH = 7;
  public static final int CHINESE_ERA_YEAR = 4;
  public static final int CHINESE_MONTH = 6;
  public static final int CHINESE_MONTH_IS_LEAP = 8;
  public static final int CHINESE_YEAR = 2;
  private static final int[] CHINESE_YEAR_INFO = { 19416, 19168, 42352, 21717, 53856, 55632, 21844, 22191, 39632, 21970, 19168, 42422, 42192, 53840, 53909, 46415, 54944, 44450, 38320, 18807, 18815, 42160, 46261, 27216, 27968, 43860, 11119, 38256, 21234, 18800, 25958, 54432, 59984, 27285, 23263, 11104, 34531, 37615, 51415, 51551, 54432, 55462, 46431, 22176, 42420, 9695, 37584, 53938, 43344, 46423, 27808, 46416, 21333, 19887, 42416, 17779, 21183, 43432, 59728, 27296, 44710, 43856, 19296, 43748, 42352, 21088, 62051, 55632, 23383, 22176, 38608, 19925, 19152, 42192, 54484, 53840, 54616, 46400, 46752, 38310, 38335, 18864, 43380, 42160, 45690, 27216, 27968, 44870, 43872, 38256, 19189, 18800, 25776, 29859, 59984, 27480, 23232, 43872, 38613, 37600, 51552, 55636, 54432, 55888, 30034, 22176, 43959, 9680, 37584, 51893, 43344, 46240, 47780, 44368, 21977, 19360, 42416, 20854, 21183, 43312, 31060, 27296, 44368, 23378, 19296, 42726, 42208, 53856, 60005, 54576, 23200, 30371, 38608, 19195, 19152, 42192, 53430, 53855, 54560, 56645, 46496, 22224, 21938, 18864, 42359, 42160, 43600, 45653, 27951, 44448, 19299, 37759, 18936, 18800, 25776, 26790, 59999, 27424, 42692, 43759, 37600, 53987, 51552, 54615, 54432, 55888, 23893, 22176, 42704, 21972, 21200, 43448, 43344, 46240, 46758, 44368, 21920, 43940, 42416, 21168, 45683, 26928, 29495, 27296, 44368, 19285, 19311, 42352, 21732, 53856, 59752, 54560, 55968, 27302, 22239, 19168, 43476, 42192, 53584, 62034, 54560 };
  public static final int CHINESE_YEAR_SYMBOL_ANIMAL = 3;
  public static final int CLEAR_AND_BRIGHT = 7;
  public static final int COLD_DEWS = 19;
  public static final int COW = 1;
  private static final int DAYS_19000131_TO_19700101 = -25537;
  private static final byte[] DAYS_IN_MONTH = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
  private static final int[] DAYS_IN_YEAR = { 0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334, 365 };
  private static final int[] DAY_CHINESE_YEAR_FROM_19000101;
  public static final int DAY_OF_CHINESE_MONTH = 10;
  public static final int DAY_OF_CHINESE_YEAR = 13;
  public static final int DAY_OF_MONTH = 9;
  public static final int DAY_OF_WEEK = 14;
  public static final int DAY_OF_YEAR = 12;
  public static final int DECEMBER = 11;
  public static final int DETAIL_AM_PM = 16;
  public static final int DOG = 10;
  public static final int DRAGON = 4;
  public static final int DST_OFFSET = 24;
  public static final int EARLY_MORNING = 1;
  public static final int ERA = 0;
  public static final int EVENING = 5;
  public static final int FEBRUARY = 1;
  public static final int FIELD_COUNT = 25;
  private static final String[] FIELD_NAMES = { "ERA", "YEAR", "CHINESE_YEAR", "CHINESE_YEAR_SYMBOL_ANIMAL", "CHINESE_ERA_YEAR", "MONTH", "CHINESE_MONTH", "CHINESE_ERA_MONTH", "CHINESE_MONTH_IS_LEAP", "DAY_OF_MONTH", "DAY_OF_CHINESE_MONTH", "CHINESE_ERA_DAY", "DAY_OF_YEAR", "DAY_OF_CHINESE_YEAR", "DAY_OF_WEEK", "SOLAR_TERM", "DETAIL_AM_PM", "AM_PM", "HOUR", "CHINESE_ERA_HOUR", "MINUTE", "SECOND", "MILLISECOND", "ZONE_OFFSET", "DST_OFFSET" };
  private static final int[] FORMAT_CHARACTERS = { 3, -1, -1, 12, 14, 26, 0, 18, 19, -1, 18, 5, 5, 7, -1, -1, -1, -1, 22, -1, -1, -1, 26, -1, 4, 25, -1, -1, -1, -1, -1, -1, 16, -1, 14, 9, 7, -1, -1, 18, -1, -1, 18, -1, 20, -1, -1, -1, -1, -1, 21, 15, -1, -1, 26, -1, 1, 25 };
  public static final int FRIDAY = 6;
  public static final int GRAIN_BUDS = 10;
  public static final int GRAIN_IN_EAR = 11;
  public static final int GRAIN_RAIN = 8;
  public static final int GREAT_COLD = 2;
  public static final int GREAT_HEAT = 14;
  public static final int HEAVY_SNOW = 23;
  public static final int HOAR_FROST_FALLS = 20;
  public static final int HORSE = 6;
  public static final int HOUR = 18;
  public static final int INSECTS_AWAKEN = 5;
  public static final int IS_CHINESE_LEAP_MONTH = 1;
  public static final int JANUARY = 0;
  public static final int JULY = 6;
  public static final int JUNE = 5;
  public static final int LIGHT_SNOW = 22;
  public static final int MARCH = 2;
  private static final long MAX_CHINESE_CALENDAR_MILLISECOND = 4136400000000L;
  private static final int MAX_CHINESE_YEAR = 2100;
  public static final int MAY = 4;
  public static final int MIDNIGHT = 0;
  public static final int MILLISECOND = 22;
  public static final int MILLISECOND_OF_DAY = 86400000;
  public static final int MILLISECOND_OF_HOUR = 3600000;
  public static final int MILLISECOND_OF_MINUTE = 60000;
  public static final int MILLISECOND_OF_SECOND = 1000;
  public static final int MINUTE = 20;
  private static final long MIN_CHINESE_CALENDAR_MILLISECOND = -2206396800000L;
  private static final int MIN_CHINESE_YEAR = 1900;
  public static final int MONDAY = 2;
  public static final int MONKEY = 8;
  public static final int MONTH = 5;
  public static final int MORNING = 2;
  public static final int MOUSE = 0;
  public static final int NIGHT = 6;
  public static final int NOON = 3;
  public static final int NOT_CHINESE_LEAP_MONTH = 0;
  public static final int NOVEMBER = 10;
  public static final int NO_SOLAR_TERM = 0;
  public static final int OCTOBER = 9;
  public static final int PIG = 11;
  public static final int PM = 1;
  public static final int RABBIT = 3;
  public static final int SATURDAY = 7;
  public static final int SECOND = 21;
  public static final int SEPTEMBER = 8;
  public static final int SHEEP = 7;
  public static final int SLIGHT_COLD = 1;
  public static final int SLIGHT_HEAT = 13;
  public static final int SNAKE = 5;
  public static final int SOLAR_TERM = 15;
  private static final int[] SOLAR_TERM_BASE = { 4, 19, 3, 18, 4, 19, 4, 19, 4, 20, 4, 20, 6, 22, 6, 22, 6, 22, 7, 22, 6, 21, 6, 21 };
  private static final byte[] SOLAR_TERM_INDEX = "0123415341536789:;<9:=<>:=1>?012@015@015@015AB78CDE8CD=1FD01GH01GH01IH01IJ0KLMN;LMBEOPDQRST0RUH0RVH0RWH0RWM0XYMNZ[MB\\]PT^_ST`_WH`_WH`_WM`_WM`aYMbc[Mde]Sfe]gfh_gih_Wih_WjhaWjka[jkl[jmn]ope]qph_qrh_sth_W".getBytes();
  private static final byte[] SOLAR_TERM_OS = "211122112122112121222211221122122222212222222221222122222232222222222222222233223232223232222222322222112122112121222211222122222222222222222222322222112122112121222111211122122222212221222221221122122222222222222222222223222232222232222222222222112122112121122111211122122122212221222221221122122222222222222221211122112122212221222211222122222232222232222222222222112122112121111111222222112121112121111111222222111121112121111111211122112122112121122111222212111121111121111111111122112122112121122111211122112122212221222221222211111121111121111111222111111121111111111111111122112121112121111111222111111111111111111111111122111121112121111111221122122222212221222221222111011111111111111111111122111121111121111111211122112122112121122211221111011111101111111111111112111121111121111111211122112122112221222211221111011111101111111110111111111121111111111111111122112121112121122111111011111121111111111111111011111111112111111111111011111111111111111111221111011111101110111110111011011111111111111111221111011011101110111110111011011111101111111111211111001011101110111110110011011111101111111111211111001011001010111110110011011111101111111110211111001011001010111100110011011011101110111110211111001011001010011100110011001011101110111110211111001010001010011000100011001011001010111110111111001010001010011000111111111111111111111111100011001011001010111100111111001010001010000000111111000010000010000000100011001011001010011100110011001011001110111110100011001010001010011000110011001011001010111110111100000010000000000000000011001010001010011000111100000000000000000000000011001010001010000000111000000000000000000000000011001010000010000000".getBytes();
  public static final int SPRING_BEGINS = 3;
  public static final int STOPPING_THE_HEAT = 16;
  public static final int SUMMER_BEGINS = 9;
  public static final int SUMMER_SOLSTICE = 12;
  public static final int SUNDAY = 1;
  public static final int THE_RAINS = 4;
  public static final int THURSDAY = 5;
  public static final int TIGER = 2;
  public static final int TUESDAY = 3;
  public static final int VERNAL_EQUINOX = 6;
  public static final int WEDNESDAY = 4;
  public static final int WHITE_DEWS = 17;
  public static final int WINTER_BEGINS = 21;
  public static final int WINTER_SOLSTICE = 24;
  public static final int YEAR = 1;
  public static final int ZONE_OFFSET = 23;
  private static final long defaultGregorianCutover = -12219292800000L;
  private static final long serialVersionUID = 1L;
  private transient int changeYear = 1582;
  private transient int currentYearSkew;
  private transient long gregorianCutover = -12219292800000L;
  private transient int julianError;
  private transient int julianSkew;
  private transient int lastYearSkew;
  private int[] mFields = new int[25];
  private long mMillisecond;
  private TimeZone mTimeZone;
  
  static
  {
    DAY_CHINESE_YEAR_FROM_19000101 = new int[] { 0, 384, 738, 1093, 1476, 1830, 2185, 2569, 2923, 3278, 3662, 4016, 4400, 4754, 5108, 5492, 5846, 6201, 6585, 6940, 7324, 7678, 8032, 8416, 8770, 9124, 9509, 9863, 10218, 10602, 10956, 11339, 11693, 12048, 12432, 12787, 13141, 13525, 13879, 14263, 14617, 14971, 15355, 15710, 16064, 16449, 16803, 17157, 17541, 17895, 18279, 18633, 18988, 19372, 19726, 20081, 20465, 20819, 21202, 21557, 21911, 22295, 22650, 23004, 23388, 23743, 24096, 24480, 24835, 25219, 25573, 25928, 26312, 26666, 27020, 27404, 27758, 28142, 28496, 28851, 29235, 29590, 29944, 30328, 30682, 31066, 31420, 31774, 32158, 32513, 32868, 33252, 33606, 33960, 34343, 34698, 35082, 35436, 35791, 36175, 36529, 36883, 37267, 37621, 37976, 38360, 38714, 39099, 39453, 39807, 40191, 40545, 40899, 41283, 41638, 42022, 42376, 42731, 43115, 43469, 43823, 44207, 44561, 44916, 45300, 45654, 46038, 46392, 46746, 47130, 47485, 47839, 48223, 48578, 48962, 49316, 49670, 50054, 50408, 50762, 51146, 51501, 51856, 52240, 52594, 52978, 53332, 53686, 54070, 54424, 54779, 55163, 55518, 55902, 56256, 56610, 56993, 57348, 57702, 58086, 58441, 58795, 59179, 59533, 59917, 60271, 60626, 61010, 61364, 61719, 62103, 62457, 62841, 63195, 63549, 63933, 64288, 64642, 65026, 65381, 65735, 66119, 66473, 66857, 67211, 67566, 67950, 68304, 68659, 69042, 69396, 69780, 70134, 70489, 70873, 71228, 71582, 71966, 72320, 72674, 73058, 73412 };
  }
  
  public Calendar()
  {
    this(null);
  }
  
  public Calendar(TimeZone paramTimeZone)
  {
    int i = 1582 / 100 - 1582 / 400 - 2;
    this.julianError = i;
    this.julianSkew = ((1582 - 2000) / 400 + i - (1582 - 2000) / 100);
    this.currentYearSkew = 10;
    this.lastYearSkew = 0;
    this.mMillisecond = System.currentTimeMillis();
    setTimeZone(paramTimeZone);
  }
  
  private void appendNumericTimeZone(StringBuilder paramStringBuilder, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = get(23) + get(24);
    char c1;
    char c2;
    if (i < 0)
    {
      c1 = '-';
      i = -i;
      c2 = c1;
    }
    else
    {
      c1 = '+';
      c2 = c1;
    }
    if (paramBoolean1) {
      paramStringBuilder.append("GMT");
    }
    paramStringBuilder.append(c2);
    appendNumericValue(paramStringBuilder, 2, i / 3600000);
    if (paramBoolean2) {
      paramStringBuilder.append(':');
    }
    appendNumericValue(paramStringBuilder, 2, i % 3600000 / 60000);
  }
  
  private static void appendNumericValue(StringBuilder paramStringBuilder, int paramInt1, int paramInt2)
  {
    paramStringBuilder.append(sa.a.c(paramInt1, paramInt2));
  }
  
  private void appendTimeZone(StringBuilder paramStringBuilder, miuix.pickerwidget.date.a parama, int paramInt)
  {
    TimeZone localTimeZone = this.mTimeZone;
    int i = this.mFields[24];
    int j = 1;
    boolean bool;
    if (i != 0) {
      bool = true;
    } else {
      bool = false;
    }
    if (paramInt != 4) {
      j = 0;
    }
    parama = localTimeZone.getDisplayName(bool, j, parama.l());
    if (parama != null) {
      paramStringBuilder.append(parama);
    } else {
      appendNumericTimeZone(paramStringBuilder, false, false);
    }
  }
  
  private void appendValue(StringBuilder paramStringBuilder, miuix.pickerwidget.date.a parama, char paramChar, int paramInt1, int paramInt2)
  {
    if (paramChar != 'A')
    {
      if (paramChar != 'S')
      {
        char c;
        if (paramChar != 'a')
        {
          c = '\f';
          if (paramChar != 'h') {
            if (paramChar != 'k')
            {
              if ((paramChar == 'm') || (paramChar == 'D')) {
                break label894;
              }
              if (paramChar != 'E') {
                if (paramChar != 'Y') {
                  if (paramChar != 'Z')
                  {
                    if (paramChar == 's') {
                      break label894;
                    }
                    if (paramChar != 't') {
                      if (paramChar != 'y') {
                        if (paramChar == 'z') {}
                      }
                    }
                  }
                }
              }
            }
          }
        }
        switch (paramChar)
        {
        default: 
          switch (paramChar)
          {
          default: 
            switch (paramChar)
            {
            default: 
              break;
            case 'e': 
              if (paramInt1 != 2)
              {
                paramStringBuilder.append(parama.c()[(this.mFields[10] - 1)]);
              }
              else
              {
                paramStringBuilder.append(parama.k()[(this.mFields[11] % 10)]);
                paramStringBuilder.append(parama.i()[(this.mFields[11] % 12)]);
              }
              break;
            }
            break;
          case 'N': 
            if (paramInt1 != 2)
            {
              paramStringBuilder.append(parama.e()[this.mFields[8]]);
              paramStringBuilder.append(parama.f()[this.mFields[6]]);
            }
            else
            {
              paramStringBuilder.append(parama.k()[(this.mFields[7] % 10)]);
              paramStringBuilder.append(parama.i()[(this.mFields[7] % 12)]);
            }
            break;
          case 'L': 
          case 'M': 
            if (paramInt1 < 3) {
              appendNumericValue(paramStringBuilder, paramInt1, this.mFields[5] + 1);
            } else if (paramInt1 == 4) {
              paramStringBuilder.append(parama.m()[this.mFields[5]]);
            } else if (paramInt1 == 5) {
              paramStringBuilder.append(parama.q()[this.mFields[5]]);
            } else {
              paramStringBuilder.append(parama.o()[this.mFields[5]]);
            }
            break;
          case 'K': 
            appendNumericValue(paramStringBuilder, paramInt1, this.mFields[18] % 12);
          }
          break;
        case 'I': 
          if (paramInt1 == 2) {
            paramStringBuilder.append(parama.k()[(this.mFields[19] % 10)]);
          }
          paramStringBuilder.append(parama.i()[(this.mFields[19] % 12)]);
          break;
        case 'G': 
          paramStringBuilder.append(parama.j()[this.mFields[0]]);
          break;
          appendTimeZone(paramStringBuilder, parama, paramInt1);
          break;
          if (paramInt1 == 2)
          {
            appendNumericValue(paramStringBuilder, paramInt1, this.mFields[1] % 100);
          }
          else
          {
            appendNumericValue(paramStringBuilder, paramInt1, this.mFields[1]);
            break;
            paramStringBuilder.append(parama.s()[this.mFields[15]]);
            break;
            if (paramInt1 == 4)
            {
              appendNumericTimeZone(paramStringBuilder, true, true);
            }
            else if (paramInt1 == 5)
            {
              appendNumericTimeZone(paramStringBuilder, false, true);
            }
            else
            {
              appendNumericTimeZone(paramStringBuilder, false, false);
              break;
              if (paramInt1 != 2)
              {
                parama = parama.d();
                paramChar = this.mFields[2];
                paramInt2 = paramStringBuilder.length();
                for (;;)
                {
                  paramInt1 = paramChar;
                  if (paramInt1 <= 0) {
                    break;
                  }
                  paramChar = paramInt1 / 10;
                  paramStringBuilder.insert(paramInt2, parama[(paramInt1 % 10)]);
                }
              }
              paramStringBuilder.append(parama.k()[(this.mFields[4] % 10)]);
              paramStringBuilder.append(parama.i()[(this.mFields[4] % 12)]);
              break;
              if (paramInt1 == 4)
              {
                paramStringBuilder.append(parama.t()[(this.mFields[14] - 1)]);
              }
              else if (paramInt1 == 5)
              {
                paramStringBuilder.append(parama.r()[(this.mFields[14] - 1)]);
              }
              else
              {
                paramStringBuilder.append(parama.p()[(this.mFields[14] - 1)]);
                break;
                appendNumericValue(paramStringBuilder, paramInt1, this.mFields[18]);
                break;
                paramChar = this.mFields[18] % 12;
                if (paramChar == 0) {
                  paramChar = c;
                }
                appendNumericValue(paramStringBuilder, paramInt1, paramChar);
                break;
                if (paramInt1 != 2) {
                  paramStringBuilder.append(parama.b()[this.mFields[17]]);
                } else {
                  paramStringBuilder.append(parama.h()[this.mFields[16]]);
                }
              }
            }
          }
          break;
        }
      }
      label894:
      appendNumericValue(paramStringBuilder, paramInt1, this.mFields[paramInt2]);
    }
    else
    {
      paramStringBuilder.append(parama.g()[this.mFields[3]]);
    }
  }
  
  private void compute()
  {
    long l = computeDateTime();
    if (!outOfChineseCalendarRange())
    {
      computeChineseDate(l);
      computeSolarTerm();
      computeChineseEraNames(l);
    }
  }
  
  private void computeChineseDate(long paramLong)
  {
    int i = (int)(paramLong + 25537L);
    int j = this.mFields[1];
    int k = 2100;
    if (j < 2100) {
      k = j + 1;
    }
    int m = i - DAY_CHINESE_YEAR_FROM_19000101[(k - 1900)];
    j = k;
    i = m;
    if (m < 0)
    {
      j = k - 1;
      i = m + daysInChineseYear(j);
    }
    int n = j;
    k = i;
    if (i < 0)
    {
      n = j - 1;
      k = i + daysInChineseYear(n);
    }
    int[] arrayOfInt = this.mFields;
    arrayOfInt[2] = n;
    arrayOfInt[13] = (k + 1);
    int i1 = leapChineseMonth(n);
    int i2 = 0;
    i = 0;
    j = i;
    m = j;
    while ((i < 12) && (k > 0))
    {
      if ((i1 >= 0) && (i == i1 + 1) && (j == 0))
      {
        i--;
        m = leapDaysInChineseYear(n);
        i3 = 1;
      }
      else
      {
        m = daysInChineseMonth(n, i);
        i3 = j;
      }
      j = i3;
      if (i3 != 0)
      {
        j = i3;
        if (i == i1 + 1) {
          j = 0;
        }
      }
      k -= m;
      i++;
    }
    if ((k == 0) && (i1 > 0) && (i == i1 + 1)) {
      if (j != 0)
      {
        j = i2;
      }
      else
      {
        i--;
        j = 1;
      }
    }
    n = i;
    int i3 = k;
    if (k < 0)
    {
      i3 = k + m;
      n = i - 1;
    }
    arrayOfInt = this.mFields;
    arrayOfInt[8] = j;
    arrayOfInt[6] = n;
    arrayOfInt[10] = (i3 + 1);
  }
  
  private void computeChineseEraNames(long paramLong)
  {
    int[] arrayOfInt = this.mFields;
    int i = arrayOfInt[1];
    int j = arrayOfInt[5];
    if (j < 2) {
      k = i - 1;
    } else {
      k = i;
    }
    int m = k;
    if (j == 1)
    {
      m = k;
      if (arrayOfInt[9] >= solarTermDaysOfMonth(i, 1) >> 8) {
        m = this.mFields[1];
      }
    }
    arrayOfInt = this.mFields;
    int k = m - 1900;
    arrayOfInt[3] = mod(k + 12, 12);
    this.mFields[4] = mod(k + 36, 60);
    arrayOfInt = this.mFields;
    i = solarTermDaysOfMonth(arrayOfInt[1], arrayOfInt[5]);
    arrayOfInt = this.mFields;
    m = (arrayOfInt[1] - 1900) * 12 + arrayOfInt[5];
    k = m;
    if (arrayOfInt[9] >= i >> 8) {
      k = m + 1;
    }
    arrayOfInt[7] = mod(k + 12, 60);
    k = (int)(paramLong + 25537L);
    this.mFields[11] = mod(k + 40, 60);
    arrayOfInt = this.mFields;
    arrayOfInt[19] = mod(k * 12 + (arrayOfInt[18] + 1) % 24 / 2, 60);
  }
  
  private void computeDate(long paramLong1, long paramLong2)
  {
    int i = computeYearAndDay(paramLong1, paramLong2);
    int[] arrayOfInt = this.mFields;
    arrayOfInt[12] = i;
    int j = arrayOfInt[1];
    int k = i;
    if (j == this.changeYear)
    {
      k = i;
      if (this.gregorianCutover <= paramLong2) {
        k = i + this.currentYearSkew;
      }
    }
    int m = k / 32;
    boolean bool = isLeapYear(j);
    j = k - daysInYear(bool, m);
    i = j;
    k = m;
    if (j > daysInMonth(bool, m))
    {
      i = j - daysInMonth(bool, m);
      k = m + 1;
    }
    arrayOfInt = this.mFields;
    arrayOfInt[5] = k;
    arrayOfInt[9] = i;
    arrayOfInt[14] = (mod(paramLong1 - 3L, 7) + 1);
  }
  
  private long computeDateTime()
  {
    this.mFields[23] = this.mTimeZone.getRawOffset();
    long l1 = this.mMillisecond;
    long l2 = l1 / 86400000L;
    int i = (int)(l1 % 86400000L);
    int j = i;
    l1 = l2;
    if (i < 0)
    {
      j = i + 86400000;
      l1 = l2 - 1L;
    }
    i = j + this.mFields[23];
    for (;;)
    {
      j = i;
      l2 = l1;
      if (i >= 0) {
        break;
      }
      i += 86400000;
      l1 -= 1L;
    }
    while (j >= 86400000)
    {
      j -= 86400000;
      l2 += 1L;
    }
    i = this.mFields[23];
    long l3 = this.mMillisecond;
    long l4 = i + l3;
    if ((l3 > 0L) && (l4 < 0L) && (i > 0))
    {
      l1 = 9223372036854775807L;
    }
    else
    {
      l1 = l4;
      if (l3 < 0L)
      {
        l1 = l4;
        if (l4 > 0L)
        {
          l1 = l4;
          if (i < 0) {
            l1 = -9223372036854775808L;
          }
        }
      }
    }
    computeDate(l2, l1);
    int k = getDstOffset(j);
    int[] arrayOfInt = this.mFields;
    arrayOfInt[24] = k;
    i = j;
    l1 = l2;
    if (k != 0)
    {
      j += k;
      if (j < 0)
      {
        j += 86400000;
        l1 = l2 - 1L;
      }
      else if (j >= 86400000)
      {
        j -= 86400000;
        l1 = 1L + l2;
      }
      else
      {
        l1 = l2;
      }
      if (l2 != l1)
      {
        i = k - arrayOfInt[23];
        l3 = this.mMillisecond;
        l4 = i + l3;
        if ((l3 > 0L) && (l4 < 0L) && (i > 0))
        {
          l2 = 9223372036854775807L;
        }
        else
        {
          l2 = l4;
          if (l3 < 0L)
          {
            l2 = l4;
            if (l4 > 0L)
            {
              l2 = l4;
              if (i < 0) {
                l2 = -9223372036854775808L;
              }
            }
          }
        }
        computeDate(l1, l2);
      }
      i = j;
    }
    arrayOfInt = this.mFields;
    j = arrayOfInt[1];
    if (j <= 0)
    {
      arrayOfInt[0] = 0;
      arrayOfInt[1] = (1 - j);
    }
    else
    {
      arrayOfInt[0] = 1;
    }
    arrayOfInt[22] = (i % 1000);
    j = i / 1000;
    arrayOfInt[21] = (j % 60);
    j /= 60;
    arrayOfInt[20] = (j % 60);
    i = j / 60 % 24;
    arrayOfInt[18] = i;
    if (i > 11) {
      j = 1;
    } else {
      j = 0;
    }
    arrayOfInt[17] = j;
    switch (i)
    {
    default: 
      break;
    case 19: 
    case 20: 
    case 21: 
    case 22: 
    case 23: 
      arrayOfInt[16] = 6;
      break;
    case 18: 
      arrayOfInt[16] = 5;
      break;
    case 13: 
    case 14: 
    case 15: 
    case 16: 
    case 17: 
      arrayOfInt[16] = 4;
      break;
    case 12: 
      arrayOfInt[16] = 3;
      break;
    case 6: 
    case 7: 
    case 8: 
    case 9: 
    case 10: 
    case 11: 
      arrayOfInt[16] = 2;
      break;
    case 1: 
    case 2: 
    case 3: 
    case 4: 
    case 5: 
      arrayOfInt[16] = 1;
      break;
    case 0: 
      arrayOfInt[16] = 0;
    }
    return l1;
  }
  
  private void computeSolarTerm()
  {
    int[] arrayOfInt = this.mFields;
    int i = solarTermDaysOfMonth(arrayOfInt[1], arrayOfInt[5]);
    arrayOfInt = this.mFields;
    int j = arrayOfInt[9];
    if (j == i >> 8) {
      arrayOfInt[15] = (arrayOfInt[5] * 2 + 1);
    } else if (j == (i & 0xFF)) {
      arrayOfInt[15] = (arrayOfInt[5] * 2 + 2);
    } else {
      arrayOfInt[15] = 0;
    }
  }
  
  private int computeYearAndDay(long paramLong1, long paramLong2)
  {
    long l = this.gregorianCutover;
    int i = 1970;
    if (paramLong2 < l) {}
    for (paramLong2 = this.julianSkew;; paramLong2 = daysFromBaseYear(i))
    {
      paramLong2 = paramLong1 - paramLong2;
      break label33;
      paramLong2 = paramLong1;
      label33:
      j = (int)(paramLong2 / 365L);
      if (j == 0) {
        break;
      }
      i += j;
    }
    paramLong1 = paramLong2;
    int j = i;
    if (paramLong2 < 0L)
    {
      j = i - 1;
      paramLong1 = paramLong2 + daysInYear(j);
    }
    this.mFields[1] = j;
    return (int)paramLong1 + 1;
  }
  
  private long daysFromBaseYear(long paramLong)
  {
    if (paramLong >= 1970L)
    {
      l1 = (paramLong - 1970L) * 365L + (paramLong - 1969L) / 4L;
      int i = this.changeYear;
      if (paramLong > i)
      {
        paramLong = l1 - ((paramLong - 1901L) / 100L - (paramLong - 1601L) / 400L);
      }
      else
      {
        if (paramLong == i) {
          i = this.currentYearSkew;
        }
        for (;;)
        {
          paramLong = l1 + i;
          break;
          if (paramLong == i - 1) {
            i = this.lastYearSkew;
          } else {
            i = this.julianSkew;
          }
        }
      }
      return paramLong;
    }
    if (paramLong <= this.changeYear) {
      paramLong = (paramLong - 1970L) * 365L + (paramLong - 1972L) / 4L;
    }
    for (long l1 = this.julianSkew;; l1 /= 400L)
    {
      return paramLong + l1;
      long l2 = (paramLong - 1972L) / 4L;
      l1 = paramLong - 2000L;
      paramLong = (paramLong - 1970L) * 365L + l2 - l1 / 100L;
    }
  }
  
  public static int daysInChineseMonth(int paramInt1, int paramInt2)
  {
    if ((CHINESE_YEAR_INFO[(paramInt1 - 1900)] & 65536 >> paramInt2 + 1) != 0) {
      paramInt1 = 30;
    } else {
      paramInt1 = 29;
    }
    return paramInt1;
  }
  
  public static int daysInChineseYear(int paramInt)
  {
    int[] arrayOfInt = DAY_CHINESE_YEAR_FROM_19000101;
    paramInt -= 1900;
    return arrayOfInt[(paramInt + 1)] - arrayOfInt[paramInt];
  }
  
  private static int daysInMonth(boolean paramBoolean, int paramInt)
  {
    if ((paramBoolean) && (paramInt == 1)) {
      return DAYS_IN_MONTH[paramInt] + 1;
    }
    return DAYS_IN_MONTH[paramInt];
  }
  
  private int daysInYear(int paramInt)
  {
    if (isLeapYear(paramInt)) {
      i = 366;
    } else {
      i = 365;
    }
    int j = this.changeYear;
    int k = i;
    if (paramInt == j) {
      k = i - this.currentYearSkew;
    }
    int i = k;
    if (paramInt == j - 1) {
      i = k - this.lastYearSkew;
    }
    return i;
  }
  
  private static int daysInYear(boolean paramBoolean, int paramInt)
  {
    if ((paramBoolean) && (paramInt > 1)) {
      return DAYS_IN_YEAR[paramInt] + 1;
    }
    return DAYS_IN_YEAR[paramInt];
  }
  
  private int getDstOffset(int paramInt)
  {
    int[] arrayOfInt = this.mFields;
    int i = arrayOfInt[1];
    if (i <= 0) {
      paramInt = 0;
    } else {
      paramInt = this.mTimeZone.getOffset(1, i, arrayOfInt[5], arrayOfInt[9], arrayOfInt[14], paramInt);
    }
    arrayOfInt = this.mFields;
    if (arrayOfInt[1] > 0) {
      return paramInt - arrayOfInt[23];
    }
    return 0;
  }
  
  private static int leapChineseMonth(int paramInt)
  {
    paramInt = CHINESE_YEAR_INFO[(paramInt - 1900)] & 0xF;
    if (paramInt == 15) {
      paramInt = -1;
    } else {
      paramInt--;
    }
    return paramInt;
  }
  
  public static int leapDaysInChineseYear(int paramInt)
  {
    if (leapChineseMonth(paramInt) >= 0)
    {
      if ((CHINESE_YEAR_INFO[(paramInt - 1900 + 1)] & 0xF) == 15) {
        paramInt = 30;
      } else {
        paramInt = 29;
      }
    }
    else {
      paramInt = 0;
    }
    return paramInt;
  }
  
  private static int mod(long paramLong, int paramInt)
  {
    int i = (int)(paramLong % paramInt);
    int j = i;
    if (paramLong < 0L)
    {
      j = i;
      if (i < 0) {
        j = i + paramInt;
      }
    }
    return j;
  }
  
  private void onChineseDateChange()
  {
    long l1 = DAY_CHINESE_YEAR_FROM_19000101[(this.mFields[2] - 1900)] - 25537L;
    int[] arrayOfInt;
    int j;
    for (int i = 0;; i++)
    {
      arrayOfInt = this.mFields;
      j = arrayOfInt[6];
      if (i >= j) {
        break;
      }
      l1 += daysInChineseMonth(arrayOfInt[2], i);
    }
    if (arrayOfInt[8] == 1) {}
    long l2;
    for (i = daysInChineseMonth(arrayOfInt[2], j);; i = leapDaysInChineseYear(arrayOfInt[2]))
    {
      l2 = l1 + i;
      break;
      i = leapChineseMonth(arrayOfInt[2]);
      l2 = l1;
      if (i < 0) {
        break;
      }
      arrayOfInt = this.mFields;
      l2 = l1;
      if (i >= arrayOfInt[6]) {
        break;
      }
    }
    computeDate(l2 + (this.mFields[10] - 1), 0L);
    onSolarDateChange();
  }
  
  private void onSolarDateChange()
  {
    int[] arrayOfInt = this.mFields;
    int i = arrayOfInt[1];
    int j = arrayOfInt[5];
    int k = arrayOfInt[9];
    long l1 = daysFromBaseYear(i) + (daysInYear(isLeapYear(i), j) + k - 1);
    this.mFields[14] = (mod(l1 - 3L, 7) + 1);
    arrayOfInt = this.mFields;
    l1 = l1 * 86400000L + (arrayOfInt[18] * 3600000 + arrayOfInt[20] * 60000 + arrayOfInt[21] * 1000 + arrayOfInt[22]);
    this.mMillisecond = l1;
    l1 = this.mTimeZone.getOffset(l1);
    long l2 = this.mMillisecond;
    if (i <= 0) {
      l1 = 0L;
    }
    this.mMillisecond = (l2 - l1);
    compute();
  }
  
  public static int solarTermDaysOfMonth(int paramInt1, int paramInt2)
  {
    if (paramInt1 > 2100) {
      return 0;
    }
    int i = SOLAR_TERM_INDEX[(paramInt1 - 1900)];
    paramInt1 = paramInt2 * 2;
    i = (i - 48) * 24 + paramInt1;
    byte[] arrayOfByte = SOLAR_TERM_OS;
    paramInt2 = arrayOfByte[i];
    int[] arrayOfInt = SOLAR_TERM_BASE;
    return (paramInt2 - 48 + arrayOfInt[paramInt1] << 8) + (arrayOfByte[(i + 1)] - 48 + arrayOfInt[(paramInt1 + 1)]);
  }
  
  public Calendar add(int paramInt1, int paramInt2)
  {
    if ((paramInt1 >= 0) && (paramInt1 < 25))
    {
      int i = 0;
      int j = 0;
      int k = 0;
      int m = 0;
      int n = 0;
      if (paramInt1 != 0)
      {
        if (paramInt1 != 1)
        {
          if (paramInt1 != 2)
          {
            if (paramInt1 != 5)
            {
              if (paramInt1 != 6)
              {
                long l1;
                long l2;
                if ((paramInt1 != 9) && (paramInt1 != 10) && (paramInt1 != 12) && (paramInt1 != 13))
                {
                  if (paramInt1 != 18)
                  {
                    switch (paramInt1)
                    {
                    default: 
                      localObject = new StringBuilder();
                      ((StringBuilder)localObject).append("unsupported set field:");
                      ((StringBuilder)localObject).append(FIELD_NAMES[paramInt1]);
                      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
                    case 22: 
                      if (paramInt2 == 0) {
                        break;
                      }
                      l1 = this.mMillisecond;
                      l2 = paramInt2 + l1;
                      if (paramInt2 > 0) {
                        paramInt1 = 1;
                      } else {
                        paramInt1 = 0;
                      }
                      paramInt2 = n;
                      if (l2 > l1) {
                        paramInt2 = 1;
                      }
                      if (paramInt1 == paramInt2)
                      {
                        this.mMillisecond = l2;
                        compute();
                        break;
                      }
                      throw new IllegalArgumentException("out of range");
                    case 21: 
                      if (paramInt2 == 0) {
                        break;
                      }
                      l2 = this.mMillisecond;
                      l1 = paramInt2 * 1000L + l2;
                      if (paramInt2 > 0) {
                        paramInt1 = 1;
                      } else {
                        paramInt1 = 0;
                      }
                      paramInt2 = i;
                      if (l1 > l2) {
                        paramInt2 = 1;
                      }
                      if (paramInt1 == paramInt2)
                      {
                        this.mMillisecond = l1;
                        compute();
                        break;
                      }
                      throw new IllegalArgumentException("out of range");
                    case 20: 
                      if (paramInt2 == 0) {
                        break;
                      }
                      l2 = this.mMillisecond;
                      l1 = paramInt2 * 60000L + l2;
                      if (paramInt2 > 0) {
                        paramInt1 = 1;
                      } else {
                        paramInt1 = 0;
                      }
                      paramInt2 = j;
                      if (l1 > l2) {
                        paramInt2 = 1;
                      }
                      if (paramInt1 == paramInt2)
                      {
                        this.mMillisecond = l1;
                        compute();
                        break;
                      }
                      throw new IllegalArgumentException("out of range");
                    }
                  }
                  else if (paramInt2 != 0)
                  {
                    l1 = this.mMillisecond;
                    l2 = paramInt2 * 3600000L + l1;
                    if (paramInt2 > 0) {
                      paramInt1 = 1;
                    } else {
                      paramInt1 = 0;
                    }
                    paramInt2 = k;
                    if (l2 > l1) {
                      paramInt2 = 1;
                    }
                    if (paramInt1 == paramInt2)
                    {
                      this.mMillisecond = l2;
                      compute();
                    }
                    else
                    {
                      throw new IllegalArgumentException("out of range");
                    }
                  }
                }
                else if (paramInt2 != 0)
                {
                  l2 = this.mMillisecond;
                  l1 = paramInt2 * 86400000L + l2;
                  if (paramInt2 > 0) {
                    paramInt1 = 1;
                  } else {
                    paramInt1 = 0;
                  }
                  paramInt2 = m;
                  if (l1 > l2) {
                    paramInt2 = 1;
                  }
                  if (paramInt1 == paramInt2)
                  {
                    this.mMillisecond = l1;
                    compute();
                  }
                  else
                  {
                    throw new IllegalArgumentException("out of range");
                  }
                }
              }
              else if (paramInt2 != 0)
              {
                if (!outOfChineseCalendarRange())
                {
                  n = leapChineseMonth(this.mFields[2]);
                  for (;;)
                  {
                    paramInt1 = n;
                    i = paramInt2;
                    if (paramInt2 <= 0) {
                      break;
                    }
                    localObject = this.mFields;
                    paramInt1 = localObject[6];
                    if ((paramInt1 == n) && (localObject[8] == 0))
                    {
                      localObject[8] = 1;
                    }
                    else
                    {
                      paramInt1++;
                      localObject[6] = paramInt1;
                      localObject[8] = 0;
                      if (paramInt1 > 11)
                      {
                        localObject[6] = 0;
                        paramInt1 = localObject[2] + 1;
                        localObject[2] = paramInt1;
                        if (paramInt1 <= 2100) {
                          n = leapChineseMonth(paramInt1);
                        } else {
                          throw new IllegalArgumentException("out of range of Chinese Lunar Year");
                        }
                      }
                    }
                    paramInt2--;
                  }
                  while (i < 0)
                  {
                    localObject = this.mFields;
                    paramInt2 = localObject[6];
                    if ((paramInt2 == paramInt1) && (localObject[8] == 1))
                    {
                      localObject[8] = 0;
                      paramInt2 = paramInt1;
                    }
                    else
                    {
                      paramInt2--;
                      localObject[6] = paramInt2;
                      if (paramInt2 < 0)
                      {
                        localObject[6] = 11;
                        localObject[6] = (11 - 1);
                        if (localObject[2] >= 1900) {
                          paramInt1 = leapChineseMonth(localObject[1]);
                        } else {
                          throw new IllegalArgumentException("out of range of Chinese Lunar Year");
                        }
                      }
                      localObject = this.mFields;
                      paramInt2 = paramInt1;
                      if (localObject[6] == paramInt1)
                      {
                        localObject[8] = 1;
                        paramInt2 = paramInt1;
                      }
                    }
                    i++;
                    paramInt1 = paramInt2;
                  }
                  localObject = this.mFields;
                  if (localObject[8] == 1) {
                    paramInt1 = leapDaysInChineseYear(localObject[2]);
                  } else {
                    paramInt1 = daysInChineseMonth(localObject[2], localObject[6]);
                  }
                  localObject = this.mFields;
                  if (localObject[10] > paramInt1) {
                    localObject[10] = paramInt1;
                  }
                  onChineseDateChange();
                }
                else
                {
                  throw new IllegalArgumentException("out of range of Chinese Lunar Year");
                }
              }
            }
            else if (paramInt2 != 0)
            {
              localObject = this.mFields;
              paramInt1 = paramInt2 + localObject[5];
              n = paramInt1 / 12;
              i = paramInt1 % 12;
              paramInt2 = n;
              paramInt1 = i;
              if (i < 0)
              {
                paramInt1 = i + 12;
                paramInt2 = n - 1;
              }
              localObject[5] = paramInt1;
              if (paramInt2 == 0)
              {
                if (localObject[0] == 0) {
                  localObject[1] = (-1 - localObject[1]);
                }
                paramInt1 = daysInMonth(isLeapYear(localObject[1]), this.mFields[5]);
                localObject = this.mFields;
                if (localObject[9] > paramInt1) {
                  localObject[9] = paramInt1;
                }
                onSolarDateChange();
              }
              else
              {
                add(1, paramInt2);
              }
            }
          }
          else if (paramInt2 != 0)
          {
            paramInt1 = paramInt2 + this.mFields[2];
            if ((!outOfChineseCalendarRange()) && (paramInt1 >= 1900) && (paramInt1 <= 2100))
            {
              localObject = this.mFields;
              localObject[2] = paramInt1;
              if ((localObject[8] == 1) && (localObject[6] == leapChineseMonth(paramInt1))) {
                this.mFields[8] = 0;
              }
              localObject = this.mFields;
              if (localObject[8] == 1) {
                paramInt1 = leapDaysInChineseYear(localObject[2]);
              } else {
                paramInt1 = daysInChineseMonth(localObject[2], localObject[6]);
              }
              localObject = this.mFields;
              if (localObject[10] > paramInt1) {
                localObject[10] = paramInt1;
              }
              onChineseDateChange();
            }
            else
            {
              throw new IllegalArgumentException("out of range of Chinese Lunar Year");
            }
          }
        }
        else if (paramInt2 != 0)
        {
          localObject = this.mFields;
          if (localObject[0] == 0) {
            localObject[1] = (-1 - localObject[1]);
          }
          paramInt1 = localObject[1] + paramInt2;
          localObject[1] = paramInt1;
          paramInt1 = daysInMonth(isLeapYear(paramInt1), this.mFields[5]);
          localObject = this.mFields;
          if (localObject[9] > paramInt1) {
            localObject[9] = paramInt1;
          }
          onSolarDateChange();
        }
      }
      else if (paramInt2 != 0)
      {
        localObject = this.mFields;
        paramInt1 = localObject[0];
        if ((paramInt1 != (paramInt2 + paramInt1) % 2) && (paramInt1 == 0))
        {
          localObject[1] = (-1 - localObject[1]);
          onSolarDateChange();
        }
      }
      return this;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Field out of range [0-25]: ");
    ((StringBuilder)localObject).append(paramInt1);
    throw new IllegalArgumentException(((StringBuilder)localObject).toString());
  }
  
  public boolean after(Calendar paramCalendar)
  {
    boolean bool;
    if (getTimeInMillis() > paramCalendar.getTimeInMillis()) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean before(Calendar paramCalendar)
  {
    boolean bool;
    if (getTimeInMillis() < paramCalendar.getTimeInMillis()) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public final Object clone()
  {
    try
    {
      Calendar localCalendar = (Calendar)super.clone();
      localCalendar.mFields = ((int[])this.mFields.clone());
      localCalendar.mTimeZone = ((TimeZone)this.mTimeZone.clone());
      return localCalendar;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new RuntimeException(localCloneNotSupportedException);
    }
  }
  
  public int compareTo(Calendar paramCalendar)
  {
    long l1 = this.mMillisecond;
    long l2 = paramCalendar.mMillisecond;
    int i;
    if (l1 < l2) {
      i = -1;
    } else if (l1 == l2) {
      i = 0;
    } else {
      i = 1;
    }
    return i;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool;
    if ((paramObject != this) && ((!(paramObject instanceof Calendar)) || (this.mMillisecond != ((Calendar)paramObject).mMillisecond))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public String format(Context paramContext, CharSequence paramCharSequence)
  {
    return format(paramContext, paramCharSequence, null);
  }
  
  public String format(Context paramContext, CharSequence paramCharSequence, miuix.pickerwidget.date.a parama)
  {
    StringBuilder localStringBuilder = (StringBuilder)e.c().b();
    paramContext = format(paramContext, localStringBuilder, paramCharSequence, parama).toString();
    e.c().a(localStringBuilder);
    return paramContext;
  }
  
  public StringBuilder format(Context paramContext, StringBuilder paramStringBuilder, CharSequence paramCharSequence)
  {
    return format(paramContext, paramStringBuilder, paramCharSequence, null);
  }
  
  public StringBuilder format(Context paramContext, StringBuilder paramStringBuilder, CharSequence paramCharSequence, miuix.pickerwidget.date.a parama)
  {
    miuix.pickerwidget.date.a locala = parama;
    if (parama == null) {
      locala = miuix.pickerwidget.date.a.n(paramContext);
    }
    int i = paramCharSequence.length();
    int j = 0;
    int k = j;
    while (j < i)
    {
      char c = paramCharSequence.charAt(j);
      int m;
      if (k != 0)
      {
        if (c == '\'')
        {
          m = j + 1;
          if ((m < i) && (paramCharSequence.charAt(m) == c))
          {
            paramStringBuilder.append(c);
            j = m;
          }
          else
          {
            k = 0;
            break label266;
          }
        }
        else
        {
          paramStringBuilder.append(c);
          break label266;
        }
      }
      else
      {
        if (c != '\'') {
          break label168;
        }
        m = j + 1;
        if ((m >= i) || (paramCharSequence.charAt(m) != c)) {
          break label162;
        }
        paramStringBuilder.append(c);
        j = m;
      }
      break label266;
      label162:
      k = 1;
      break label266;
      label168:
      if ((c >= 'A') && (c <= 'z'))
      {
        paramContext = FORMAT_CHARACTERS;
        int n = c - 'A';
        if (paramContext[n] >= 0)
        {
          m = 1;
          for (;;)
          {
            int i1 = j + 1;
            if ((i1 >= i) || (paramCharSequence.charAt(i1) != c)) {
              break;
            }
            m++;
            j = i1;
          }
          appendValue(paramStringBuilder, locala, c, m, FORMAT_CHARACTERS[n]);
          break label266;
        }
      }
      paramStringBuilder.append(c);
      label266:
      j++;
    }
    return paramStringBuilder;
  }
  
  public int get(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < 25)) {
      return this.mFields[paramInt];
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Field out of range [0-25]: ");
    localStringBuilder.append(paramInt);
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public int getActualMaximum(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < 25))
    {
      int i = 0;
      int j = 0;
      switch (paramInt)
      {
      default: 
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("unsupported field: ");
        ((StringBuilder)localObject).append(FIELD_NAMES[paramInt]);
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      case 22: 
        return 999;
      case 20: 
      case 21: 
        return 59;
      case 18: 
        return 23;
      case 17: 
        return 1;
      case 16: 
        return 6;
      case 15: 
        return 24;
      case 14: 
        return 7;
      case 13: 
        if (outOfChineseCalendarRange()) {
          paramInt = j;
        } else {
          paramInt = daysInChineseYear(this.mFields[2]);
        }
        return paramInt;
      case 12: 
        return daysInYear(this.mFields[1]);
      case 10: 
        if (outOfChineseCalendarRange())
        {
          paramInt = i;
        }
        else if (isChineseLeapMonth())
        {
          paramInt = leapDaysInChineseYear(this.mFields[2]);
        }
        else
        {
          localObject = this.mFields;
          paramInt = daysInChineseMonth(localObject[2], localObject[6]);
        }
        return paramInt;
      case 9: 
        return daysInMonth(isLeapYear(this.mFields[1]), this.mFields[5]);
      case 8: 
        return 1;
      case 5: 
      case 6: 
        return 11;
      case 4: 
      case 7: 
      case 11: 
      case 19: 
        return 59;
      case 3: 
        return 11;
      case 2: 
        return 2100;
      case 1: 
        if (this.mFields[0] == 1) {
          paramInt = 292278994;
        } else {
          paramInt = 292269055;
        }
        return paramInt;
      }
      return 1;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Field out of range [0-25]: ");
    ((StringBuilder)localObject).append(paramInt);
    throw new IllegalArgumentException(((StringBuilder)localObject).toString());
  }
  
  public int getActualMinimum(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < 25))
    {
      switch (paramInt)
      {
      default: 
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("unsupported field: ");
        localStringBuilder.append(FIELD_NAMES[paramInt]);
        throw new IllegalArgumentException(localStringBuilder.toString());
      case 15: 
      case 16: 
      case 17: 
      case 18: 
      case 20: 
      case 21: 
      case 22: 
        return 0;
      case 14: 
        return 1;
      case 13: 
        return outOfChineseCalendarRange() ^ true;
      case 12: 
        return 1;
      case 10: 
        return outOfChineseCalendarRange() ^ true;
      case 9: 
        return 1;
      case 3: 
      case 4: 
      case 5: 
      case 6: 
      case 7: 
      case 8: 
      case 11: 
      case 19: 
        return 0;
      case 2: 
        return 1900;
      case 1: 
        return 1;
      }
      return 0;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Field out of range [0-25]: ");
    localStringBuilder.append(paramInt);
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public int getChineseLeapMonth()
  {
    return leapChineseMonth(this.mFields[2]);
  }
  
  public long getTimeInMillis()
  {
    return this.mMillisecond;
  }
  
  public TimeZone getTimeZone()
  {
    return this.mTimeZone;
  }
  
  public int hashCode()
  {
    long l = this.mMillisecond;
    return (int)(l ^ l >>> 32);
  }
  
  public boolean isChineseLeapMonth()
  {
    int i = this.mFields[8];
    boolean bool = true;
    if (i != 1) {
      bool = false;
    }
    return bool;
  }
  
  public boolean isLeapYear(int paramInt)
  {
    int i = this.changeYear;
    boolean bool1 = true;
    boolean bool2 = true;
    if (paramInt > i)
    {
      if (paramInt % 4 == 0)
      {
        bool1 = bool2;
        if (paramInt % 100 != 0) {
          break label47;
        }
        if (paramInt % 400 == 0)
        {
          bool1 = bool2;
          break label47;
        }
      }
      bool1 = false;
      label47:
      return bool1;
    }
    if (paramInt % 4 != 0) {
      bool1 = false;
    }
    return bool1;
  }
  
  public boolean outOfChineseCalendarRange()
  {
    long l1 = this.mMillisecond;
    int[] arrayOfInt = this.mFields;
    int i = arrayOfInt[23];
    long l2 = i;
    int j = arrayOfInt[24];
    boolean bool;
    if ((l1 >= -2206396800000L - l2 - j) && (l1 < 4136400000000L - i - j)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public Calendar set(int paramInt1, int paramInt2)
  {
    Object localObject;
    if (paramInt1 == 6)
    {
      if (paramInt2 < 0)
      {
        paramInt2 = -paramInt2;
        if (paramInt2 == leapChineseMonth(this.mFields[2]))
        {
          this.mFields[8] = 1;
        }
        else
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("year ");
          ((StringBuilder)localObject).append(this.mFields[2]);
          ((StringBuilder)localObject).append(" has no such leap month:");
          ((StringBuilder)localObject).append(paramInt2);
          throw new IllegalArgumentException(((StringBuilder)localObject).toString());
        }
      }
      else
      {
        if ((paramInt2 < getActualMinimum(paramInt1)) && (paramInt2 > getActualMaximum(paramInt1)))
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("value is out of date range [");
          ((StringBuilder)localObject).append(getActualMinimum(paramInt1));
          ((StringBuilder)localObject).append("-");
          ((StringBuilder)localObject).append(getActualMaximum(paramInt1));
          ((StringBuilder)localObject).append("]: ");
          ((StringBuilder)localObject).append(paramInt2);
          throw new IllegalArgumentException(((StringBuilder)localObject).toString());
        }
        this.mFields[8] = 0;
      }
      localObject = this.mFields;
      localObject[6] = paramInt2;
      if (localObject[8] == 1) {
        paramInt1 = leapDaysInChineseYear(localObject[2]);
      } else {
        paramInt1 = daysInChineseMonth(localObject[2], paramInt2);
      }
      localObject = this.mFields;
      if (localObject[10] > paramInt1) {
        localObject[10] = paramInt1;
      }
      onChineseDateChange();
      return this;
    }
    if ((paramInt2 < getActualMinimum(paramInt1)) && (paramInt2 > getActualMaximum(paramInt1)))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("value is out of date range [");
      ((StringBuilder)localObject).append(getActualMinimum(paramInt1));
      ((StringBuilder)localObject).append("-");
      ((StringBuilder)localObject).append(getActualMaximum(paramInt1));
      ((StringBuilder)localObject).append("]: ");
      ((StringBuilder)localObject).append(paramInt2);
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    }
    try
    {
      add(paramInt1, paramInt2 - this.mFields[paramInt1]);
      return this;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("unsupported set field:");
      localStringBuilder.append(FIELD_NAMES[paramInt1]);
      throw new IllegalArgumentException(localStringBuilder.toString());
    }
  }
  
  public Calendar set(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    if ((paramInt2 >= 0) && (paramInt2 <= 11))
    {
      if ((paramInt3 > 0) && (paramInt3 <= daysInMonth(isLeapYear(paramInt1), paramInt2)))
      {
        if ((paramInt4 >= 0) && (paramInt4 <= 23))
        {
          if ((paramInt5 >= 0) && (paramInt5 <= 59))
          {
            if ((paramInt6 >= 0) && (paramInt6 <= 59))
            {
              if ((paramInt7 >= 0) && (paramInt7 <= 999))
              {
                localObject = this.mFields;
                localObject[1] = paramInt1;
                localObject[5] = paramInt2;
                localObject[9] = paramInt3;
                localObject[18] = paramInt4;
                localObject[20] = paramInt5;
                localObject[21] = paramInt6;
                localObject[22] = paramInt7;
                onSolarDateChange();
                return this;
              }
              localObject = new StringBuilder();
              ((StringBuilder)localObject).append("Invalid millisecond ");
              ((StringBuilder)localObject).append(paramInt7);
              throw new IllegalArgumentException(((StringBuilder)localObject).toString());
            }
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("Invalid second ");
            ((StringBuilder)localObject).append(paramInt6);
            throw new IllegalArgumentException(((StringBuilder)localObject).toString());
          }
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Invalid minute ");
          ((StringBuilder)localObject).append(paramInt5);
          throw new IllegalArgumentException(((StringBuilder)localObject).toString());
        }
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Invalid hour ");
        ((StringBuilder)localObject).append(paramInt4);
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Year ");
      ((StringBuilder)localObject).append(paramInt1);
      ((StringBuilder)localObject).append(" month ");
      ((StringBuilder)localObject).append(paramInt2);
      ((StringBuilder)localObject).append(" has no day ");
      ((StringBuilder)localObject).append(paramInt3);
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Year ");
    ((StringBuilder)localObject).append(paramInt1);
    ((StringBuilder)localObject).append(" has no month ");
    ((StringBuilder)localObject).append(paramInt2);
    throw new IllegalArgumentException(((StringBuilder)localObject).toString());
  }
  
  public Calendar setChineseTime(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    if ((paramInt1 >= 1900) && (paramInt1 <= 2100))
    {
      if ((paramInt2 >= 0) && (paramInt2 <= 11))
      {
        if ((paramBoolean) && (leapChineseMonth(paramInt1) != paramInt2))
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Year ");
          ((StringBuilder)localObject).append(paramInt1);
          ((StringBuilder)localObject).append(" has no leap month ");
          ((StringBuilder)localObject).append(paramInt2);
          throw new IllegalArgumentException(((StringBuilder)localObject).toString());
        }
        if (paramBoolean)
        {
          if ((paramInt3 <= 0) || (paramInt3 > leapDaysInChineseYear(paramInt1)))
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("Year ");
            ((StringBuilder)localObject).append(paramInt1);
            ((StringBuilder)localObject).append(" month ");
            ((StringBuilder)localObject).append(paramInt2);
            ((StringBuilder)localObject).append(" has no day ");
            ((StringBuilder)localObject).append(paramInt3);
            throw new IllegalArgumentException(((StringBuilder)localObject).toString());
          }
        }
        else {
          if ((paramInt3 <= 0) || (paramInt3 > daysInChineseMonth(paramInt1, paramInt2))) {
            break label466;
          }
        }
        if ((paramInt4 >= 0) && (paramInt4 <= 23))
        {
          if ((paramInt5 >= 0) && (paramInt5 <= 59))
          {
            if ((paramInt6 >= 0) && (paramInt6 <= 59))
            {
              if ((paramInt7 >= 0) && (paramInt7 <= 1000))
              {
                localObject = this.mFields;
                localObject[2] = paramInt1;
                localObject[6] = paramInt2;
                localObject[10] = paramInt3;
                localObject[8] = paramBoolean;
                localObject[18] = paramInt4;
                localObject[20] = paramInt5;
                localObject[21] = paramInt6;
                localObject[22] = paramInt7;
                onChineseDateChange();
                return this;
              }
              localObject = new StringBuilder();
              ((StringBuilder)localObject).append("Invalid millisecond ");
              ((StringBuilder)localObject).append(paramInt7);
              throw new IllegalArgumentException(((StringBuilder)localObject).toString());
            }
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("Invalid second ");
            ((StringBuilder)localObject).append(paramInt6);
            throw new IllegalArgumentException(((StringBuilder)localObject).toString());
          }
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Invalid minute ");
          ((StringBuilder)localObject).append(paramInt5);
          throw new IllegalArgumentException(((StringBuilder)localObject).toString());
        }
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Invalid hour ");
        ((StringBuilder)localObject).append(paramInt4);
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
        label466:
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Year ");
        ((StringBuilder)localObject).append(paramInt1);
        ((StringBuilder)localObject).append(" month ");
        ((StringBuilder)localObject).append(paramInt2);
        ((StringBuilder)localObject).append(" has no day ");
        ((StringBuilder)localObject).append(paramInt3);
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Year ");
      ((StringBuilder)localObject).append(paramInt1);
      ((StringBuilder)localObject).append(" has no month ");
      ((StringBuilder)localObject).append(paramInt2);
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Date out of range [1900 - 2100] expected, but year is ");
    ((StringBuilder)localObject).append(paramInt1);
    throw new IllegalArgumentException(((StringBuilder)localObject).toString());
  }
  
  public void setGregorianChange(long paramLong)
  {
    this.gregorianCutover = paramLong;
    Calendar localCalendar = new Calendar(TimeZone.getTimeZone("GMT"));
    localCalendar.setTimeInMillis(paramLong);
    this.changeYear = localCalendar.get(1);
    if (localCalendar.get(0) == 0) {
      this.changeYear = (1 - this.changeYear);
    }
    int i = this.changeYear;
    int j = i / 100 - i / 400 - 2;
    this.julianError = j;
    this.julianSkew = ((i - 2000) / 400 + j - (i - 2000) / 100);
    i = localCalendar.get(12);
    j = this.julianSkew;
    if (i < j)
    {
      this.currentYearSkew = (i - 1);
      this.lastYearSkew = (j - i + 1);
    }
    else
    {
      this.lastYearSkew = 0;
      this.currentYearSkew = j;
    }
  }
  
  public Calendar setTimeInMillis(long paramLong)
  {
    this.mMillisecond = paramLong;
    compute();
    return this;
  }
  
  public Calendar setTimeZone(TimeZone paramTimeZone)
  {
    TimeZone localTimeZone = paramTimeZone;
    if (paramTimeZone == null) {
      localTimeZone = TimeZone.getDefault();
    }
    paramTimeZone = this.mTimeZone;
    if ((paramTimeZone == null) || (!paramTimeZone.getID().equals(localTimeZone.getID())))
    {
      this.mTimeZone = localTimeZone;
      compute();
    }
    return this;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = (StringBuilder)e.c().b();
    localStringBuilder.append(getClass().getName());
    localStringBuilder.append("[time");
    localStringBuilder.append(this.mMillisecond);
    localStringBuilder.append(",zone=");
    localStringBuilder.append(this.mTimeZone.getID());
    for (int i = 0; i < 25; i++)
    {
      localStringBuilder.append(',');
      localStringBuilder.append(FIELD_NAMES[i]);
      localStringBuilder.append('=');
      localStringBuilder.append(this.mFields[i]);
    }
    localStringBuilder.append(']');
    String str = localStringBuilder.toString();
    e.c().a(localStringBuilder);
    return str;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.holiday.utils.Calendar
 * JD-Core Version:    0.7.0.1
 */