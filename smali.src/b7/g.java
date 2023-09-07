package b7;

import android.text.TextUtils;
import android.util.Pair;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class g
{
  private static SoftReference<Pair<String, List<o.a>>> a = new SoftReference(null);
  private static final Pattern b = Pattern.compile("^\\+?([0-9]{1,3})");
  private static final Pattern c = Pattern.compile("([0-9]{4,14})$");
  public static final Map<String, Integer> d;
  
  static
  {
    HashMap localHashMap = new HashMap();
    d = localHashMap;
    localHashMap.put("AF", Integer.valueOf(93));
    localHashMap.put("AL", Integer.valueOf(355));
    localHashMap.put("DZ", Integer.valueOf(213));
    Integer localInteger1 = Integer.valueOf(1);
    localHashMap.put("AS", localInteger1);
    localHashMap.put("AD", Integer.valueOf(376));
    localHashMap.put("AO", Integer.valueOf(244));
    localHashMap.put("AI", localInteger1);
    localHashMap.put("AQ", Integer.valueOf(672));
    localHashMap.put("AG", localInteger1);
    localHashMap.put("AR", Integer.valueOf(54));
    localHashMap.put("AM", Integer.valueOf(374));
    localHashMap.put("AW", Integer.valueOf(297));
    Integer localInteger2 = Integer.valueOf(61);
    localHashMap.put("AU", localInteger2);
    localHashMap.put("AT", Integer.valueOf(43));
    localHashMap.put("AZ", Integer.valueOf(994));
    localHashMap.put("BS", localInteger1);
    localHashMap.put("BH", Integer.valueOf(973));
    localHashMap.put("BD", Integer.valueOf(880));
    localHashMap.put("BB", localInteger1);
    localHashMap.put("BY", Integer.valueOf(375));
    localHashMap.put("BE", Integer.valueOf(32));
    localHashMap.put("BZ", Integer.valueOf(501));
    localHashMap.put("BJ", Integer.valueOf(229));
    localHashMap.put("BM", localInteger1);
    localHashMap.put("BT", Integer.valueOf(975));
    localHashMap.put("BO", Integer.valueOf(591));
    localHashMap.put("BA", Integer.valueOf(387));
    localHashMap.put("BW", Integer.valueOf(267));
    localHashMap.put("BR", Integer.valueOf(55));
    localHashMap.put("IO", Integer.valueOf(246));
    localHashMap.put("VG", localInteger1);
    localHashMap.put("BN", Integer.valueOf(673));
    localHashMap.put("BG", Integer.valueOf(359));
    localHashMap.put("BF", Integer.valueOf(226));
    localHashMap.put("BI", Integer.valueOf(257));
    localHashMap.put("KH", Integer.valueOf(855));
    localHashMap.put("CM", Integer.valueOf(237));
    localHashMap.put("CA", localInteger1);
    localHashMap.put("CV", Integer.valueOf(238));
    localHashMap.put("KY", localInteger1);
    localHashMap.put("CF", Integer.valueOf(236));
    localHashMap.put("TD", Integer.valueOf(235));
    localHashMap.put("CL", Integer.valueOf(56));
    localHashMap.put("CN", Integer.valueOf(86));
    localHashMap.put("CX", localInteger2);
    localHashMap.put("CC", localInteger2);
    localHashMap.put("CO", Integer.valueOf(57));
    localHashMap.put("KM", Integer.valueOf(269));
    localHashMap.put("CK", Integer.valueOf(682));
    localHashMap.put("CR", Integer.valueOf(506));
    localHashMap.put("HR", Integer.valueOf(385));
    localHashMap.put("CU", Integer.valueOf(53));
    Integer localInteger3 = Integer.valueOf(599);
    localHashMap.put("CW", localInteger3);
    localHashMap.put("CY", Integer.valueOf(357));
    localHashMap.put("CZ", Integer.valueOf(420));
    localHashMap.put("CD", Integer.valueOf(243));
    localHashMap.put("DK", Integer.valueOf(45));
    localHashMap.put("DJ", Integer.valueOf(253));
    localHashMap.put("DM", localInteger1);
    localHashMap.put("DO", localInteger1);
    localHashMap.put("TL", Integer.valueOf(670));
    localHashMap.put("EC", Integer.valueOf(593));
    localHashMap.put("EG", Integer.valueOf(20));
    localHashMap.put("SV", Integer.valueOf(503));
    localHashMap.put("GQ", Integer.valueOf(240));
    localHashMap.put("ER", Integer.valueOf(291));
    localHashMap.put("EE", Integer.valueOf(372));
    localHashMap.put("ET", Integer.valueOf(251));
    localHashMap.put("FK", Integer.valueOf(500));
    localHashMap.put("FO", Integer.valueOf(298));
    localHashMap.put("FJ", Integer.valueOf(679));
    localHashMap.put("FI", Integer.valueOf(358));
    localHashMap.put("FR", Integer.valueOf(33));
    localHashMap.put("PF", Integer.valueOf(689));
    localHashMap.put("GA", Integer.valueOf(241));
    localHashMap.put("GM", Integer.valueOf(220));
    localHashMap.put("GE", Integer.valueOf(995));
    localHashMap.put("DE", Integer.valueOf(49));
    localHashMap.put("GH", Integer.valueOf(233));
    localHashMap.put("GI", Integer.valueOf(350));
    localHashMap.put("GR", Integer.valueOf(30));
    localHashMap.put("GL", Integer.valueOf(299));
    localHashMap.put("GD", localInteger1);
    localHashMap.put("GU", localInteger1);
    localHashMap.put("GT", Integer.valueOf(502));
    Integer localInteger4 = Integer.valueOf(44);
    localHashMap.put("GG", localInteger4);
    localHashMap.put("GN", Integer.valueOf(224));
    localHashMap.put("GW", Integer.valueOf(245));
    localHashMap.put("GY", Integer.valueOf(592));
    localHashMap.put("HT", Integer.valueOf(509));
    localHashMap.put("HN", Integer.valueOf(504));
    localHashMap.put("HK", Integer.valueOf(852));
    localHashMap.put("HU", Integer.valueOf(36));
    localHashMap.put("IS", Integer.valueOf(354));
    localHashMap.put("IN", Integer.valueOf(91));
    localHashMap.put("ID", Integer.valueOf(62));
    localHashMap.put("IR", Integer.valueOf(98));
    localHashMap.put("IQ", Integer.valueOf(964));
    localHashMap.put("IE", Integer.valueOf(353));
    localHashMap.put("IM", localInteger4);
    localHashMap.put("IL", Integer.valueOf(972));
    localHashMap.put("IT", Integer.valueOf(39));
    localHashMap.put("CI", Integer.valueOf(225));
    localHashMap.put("JM", localInteger1);
    localHashMap.put("JP", Integer.valueOf(81));
    localHashMap.put("JE", localInteger4);
    localHashMap.put("JO", Integer.valueOf(962));
    Integer localInteger5 = Integer.valueOf(7);
    localHashMap.put("KZ", localInteger5);
    localHashMap.put("KE", Integer.valueOf(254));
    localHashMap.put("KI", Integer.valueOf(686));
    localHashMap.put("XK", Integer.valueOf(383));
    localHashMap.put("KW", Integer.valueOf(965));
    localHashMap.put("KG", Integer.valueOf(996));
    localHashMap.put("LA", Integer.valueOf(856));
    localHashMap.put("LV", Integer.valueOf(371));
    localHashMap.put("LB", Integer.valueOf(961));
    localHashMap.put("LS", Integer.valueOf(266));
    localHashMap.put("LR", Integer.valueOf(231));
    localHashMap.put("LY", Integer.valueOf(218));
    localHashMap.put("LI", Integer.valueOf(423));
    localHashMap.put("LT", Integer.valueOf(370));
    localHashMap.put("LU", Integer.valueOf(352));
    localHashMap.put("MO", Integer.valueOf(853));
    localHashMap.put("MK", Integer.valueOf(389));
    localHashMap.put("MG", Integer.valueOf(261));
    localHashMap.put("MW", Integer.valueOf(265));
    localHashMap.put("MY", Integer.valueOf(60));
    localHashMap.put("MV", Integer.valueOf(960));
    localHashMap.put("ML", Integer.valueOf(223));
    localHashMap.put("MT", Integer.valueOf(356));
    localHashMap.put("MH", Integer.valueOf(692));
    localHashMap.put("MR", Integer.valueOf(222));
    localHashMap.put("MU", Integer.valueOf(230));
    Integer localInteger6 = Integer.valueOf(262);
    localHashMap.put("YT", localInteger6);
    localHashMap.put("MX", Integer.valueOf(52));
    localHashMap.put("FM", Integer.valueOf(691));
    localHashMap.put("MD", Integer.valueOf(373));
    localHashMap.put("MC", Integer.valueOf(377));
    localHashMap.put("MN", Integer.valueOf(976));
    localHashMap.put("ME", Integer.valueOf(382));
    localHashMap.put("MS", localInteger1);
    localInteger2 = Integer.valueOf(212);
    localHashMap.put("MA", localInteger2);
    localHashMap.put("MZ", Integer.valueOf(258));
    localHashMap.put("MM", Integer.valueOf(95));
    localHashMap.put("NA", Integer.valueOf(264));
    localHashMap.put("NR", Integer.valueOf(674));
    localHashMap.put("NP", Integer.valueOf(977));
    localHashMap.put("NL", Integer.valueOf(31));
    localHashMap.put("AN", localInteger3);
    localHashMap.put("NC", Integer.valueOf(687));
    Integer localInteger7 = Integer.valueOf(64);
    localHashMap.put("NZ", localInteger7);
    localHashMap.put("NI", Integer.valueOf(505));
    localHashMap.put("NE", Integer.valueOf(227));
    localHashMap.put("NG", Integer.valueOf(234));
    localHashMap.put("NU", Integer.valueOf(683));
    localHashMap.put("KP", Integer.valueOf(850));
    localHashMap.put("MP", localInteger1);
    localInteger3 = Integer.valueOf(47);
    localHashMap.put("NO", localInteger3);
    localHashMap.put("OM", Integer.valueOf(968));
    localHashMap.put("PK", Integer.valueOf(92));
    localHashMap.put("PW", Integer.valueOf(680));
    localHashMap.put("PS", Integer.valueOf(970));
    localHashMap.put("PA", Integer.valueOf(507));
    localHashMap.put("PG", Integer.valueOf(675));
    localHashMap.put("PY", Integer.valueOf(595));
    localHashMap.put("PE", Integer.valueOf(51));
    localHashMap.put("PH", Integer.valueOf(63));
    localHashMap.put("PN", localInteger7);
    localHashMap.put("PL", Integer.valueOf(48));
    localHashMap.put("PT", Integer.valueOf(351));
    localHashMap.put("PR", localInteger1);
    localHashMap.put("QA", Integer.valueOf(974));
    localHashMap.put("CG", Integer.valueOf(242));
    localHashMap.put("RE", localInteger6);
    localHashMap.put("RO", Integer.valueOf(40));
    localHashMap.put("RU", localInteger5);
    localHashMap.put("RW", Integer.valueOf(250));
    localInteger6 = Integer.valueOf(590);
    localHashMap.put("BL", localInteger6);
    localHashMap.put("SH", Integer.valueOf(290));
    localHashMap.put("KN", localInteger1);
    localHashMap.put("LC", localInteger1);
    localHashMap.put("MF", localInteger6);
    localHashMap.put("PM", Integer.valueOf(508));
    localHashMap.put("VC", localInteger1);
    localHashMap.put("WS", Integer.valueOf(685));
    localHashMap.put("SM", Integer.valueOf(378));
    localHashMap.put("ST", Integer.valueOf(239));
    localHashMap.put("SA", Integer.valueOf(966));
    localHashMap.put("SN", Integer.valueOf(221));
    localHashMap.put("RS", Integer.valueOf(381));
    localHashMap.put("SC", Integer.valueOf(248));
    localHashMap.put("SL", Integer.valueOf(232));
    localHashMap.put("SG", Integer.valueOf(65));
    localHashMap.put("SX", localInteger1);
    localHashMap.put("SK", Integer.valueOf(421));
    localHashMap.put("SI", Integer.valueOf(386));
    localHashMap.put("SB", Integer.valueOf(677));
    localHashMap.put("SO", Integer.valueOf(252));
    localHashMap.put("ZA", Integer.valueOf(27));
    localHashMap.put("KR", Integer.valueOf(82));
    localHashMap.put("SS", Integer.valueOf(211));
    localHashMap.put("ES", Integer.valueOf(34));
    localHashMap.put("LK", Integer.valueOf(94));
    localHashMap.put("SD", Integer.valueOf(249));
    localHashMap.put("SR", Integer.valueOf(597));
    localHashMap.put("SJ", localInteger3);
    localHashMap.put("SZ", Integer.valueOf(268));
    localHashMap.put("SE", Integer.valueOf(46));
    localHashMap.put("CH", Integer.valueOf(41));
    localHashMap.put("SY", Integer.valueOf(963));
    localHashMap.put("TW", Integer.valueOf(886));
    localHashMap.put("TJ", Integer.valueOf(992));
    localHashMap.put("TZ", Integer.valueOf(255));
    localHashMap.put("TH", Integer.valueOf(66));
    localHashMap.put("TG", Integer.valueOf(228));
    localHashMap.put("TK", Integer.valueOf(690));
    localHashMap.put("TO", Integer.valueOf(676));
    localHashMap.put("TT", localInteger1);
    localHashMap.put("TN", Integer.valueOf(216));
    localHashMap.put("TR", Integer.valueOf(90));
    localHashMap.put("TM", Integer.valueOf(993));
    localHashMap.put("TC", localInteger1);
    localHashMap.put("TV", Integer.valueOf(688));
    localHashMap.put("VI", localInteger1);
    localHashMap.put("UG", Integer.valueOf(256));
    localHashMap.put("UA", Integer.valueOf(380));
    localHashMap.put("AE", Integer.valueOf(971));
    localHashMap.put("GB", localInteger4);
    localHashMap.put("US", localInteger1);
    localHashMap.put("UY", Integer.valueOf(598));
    localHashMap.put("UZ", Integer.valueOf(998));
    localHashMap.put("VU", Integer.valueOf(678));
    localHashMap.put("VA", Integer.valueOf(379));
    localHashMap.put("VE", Integer.valueOf(58));
    localHashMap.put("VN", Integer.valueOf(84));
    localHashMap.put("WF", Integer.valueOf(681));
    localHashMap.put("EH", localInteger2);
    localHashMap.put("YE", Integer.valueOf(967));
    localHashMap.put("ZM", Integer.valueOf(260));
    localHashMap.put("ZW", Integer.valueOf(263));
  }
  
  public static int a(String paramString)
  {
    paramString = (Integer)d.get(paramString);
    int i;
    if (paramString == null) {
      i = 86;
    } else {
      i = paramString.intValue();
    }
    return i;
  }
  
  public static String b(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("+");
    localStringBuilder.append(paramInt);
    return localStringBuilder.toString();
  }
  
  public static List<o.a> c(String paramString)
  {
    Pair localPair = (Pair)a.get();
    if ((localPair != null) && (TextUtils.equals((CharSequence)localPair.first, paramString))) {
      return (List)localPair.second;
    }
    return null;
  }
  
  public static String d(int paramInt, String paramString)
  {
    return String.format("%s%d %s", new Object[] { "+", Integer.valueOf(paramInt), paramString });
  }
  
  public static int e()
  {
    return a(Locale.getDefault().getCountry());
  }
  
  public static String f(String paramString1, String paramString2)
  {
    String str = paramString1.replace(" ", "");
    paramString1 = str;
    if (!paramString2.equals("+86"))
    {
      paramString1 = new StringBuilder();
      paramString1.append(paramString2);
      paramString1.append(str);
      paramString1 = paramString1.toString();
    }
    return paramString1;
  }
  
  public static int g(String paramString)
  {
    paramString = paramString.replaceAll("\\p{C}", "");
    if (TextUtils.isEmpty(paramString)) {
      return 0;
    }
    paramString = b.matcher(paramString);
    if (!paramString.find()) {
      return 0;
    }
    return Integer.parseInt(paramString.group(1));
  }
  
  public static void h(List<o.a> paramList, String paramString)
  {
    Pair localPair = (Pair)a.get();
    if ((localPair == null) || (!TextUtils.equals((CharSequence)localPair.first, paramString))) {
      a = new SoftReference(new Pair(paramString, paramList));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b7.g
 * JD-Core Version:    0.7.0.1
 */