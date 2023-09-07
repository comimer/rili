package com.xiaomi.accountsdk.account;

public class d
{
  static final String A;
  public static final String A0;
  static final String B;
  static final String C;
  public static final String D;
  static final String E;
  public static final String F;
  static final String G;
  static final String H;
  static final String I;
  static final String J;
  static final String K;
  static final String L;
  @Deprecated
  public static final String M;
  static String N;
  static final String O;
  static final String P;
  static final String Q;
  static final String R;
  static final String S;
  static final String T;
  static final String U;
  static final String V;
  static final String W;
  static final String X;
  static final String Y;
  static final String Z;
  static final boolean a;
  static final String a0;
  public static final String b;
  static final String b0;
  static final String c;
  static final String c0;
  public static final String d;
  static final String d0;
  public static final String e;
  static final String e0;
  @Deprecated
  public static final String f;
  static final String f0;
  public static final String g;
  static final String g0;
  public static final String h;
  static final String h0;
  public static final String i;
  static final String i0;
  public static final String j;
  static final String j0;
  public static final String k;
  static final String k0;
  public static final String l;
  public static final String l0;
  public static final String m;
  public static final String m0;
  public static final String n;
  public static final String n0;
  public static final String o;
  public static final String o0;
  public static final String p;
  public static final String p0;
  public static final String q;
  public static final String q0;
  public static final String r;
  static final String r0;
  public static final String s;
  public static final String s0;
  static String t;
  public static final String t0;
  static String u;
  public static final String u0;
  public static final String v;
  public static final String v0;
  public static final String w;
  public static final String w0;
  public static final String x;
  public static final String x0;
  public static final String y;
  public static final String y0;
  static final String z;
  public static final String z0;
  
  static
  {
    boolean bool = e.h();
    a = bool;
    String str;
    if (bool) {
      str = "http://account.preview.n.xiaomi.net";
    } else {
      str = "https://account.xiaomi.com";
    }
    b = str;
    if (bool) {
      localObject1 = "account.preview.n.xiaomi.net";
    } else {
      localObject1 = "account.xiaomi.com";
    }
    c = (String)localObject1;
    if (bool) {
      localObject1 = "http://account.preview.n.xiaomi.net/pass";
    } else {
      localObject1 = "https://account.xiaomi.com/pass";
    }
    d = (String)localObject1;
    Object localObject2 = "http://api.account.xiaomi.com/pass";
    Object localObject3 = "https://api.account.xiaomi.com/pass";
    if (bool) {
      localObject4 = "http://api.account.xiaomi.com/pass";
    } else {
      localObject4 = "https://api.account.xiaomi.com/pass";
    }
    e = (String)localObject4;
    if (bool) {
      localObject2 = "http://api.account.preview.n.xiaomi.net/pass";
    }
    f = (String)localObject2;
    localObject2 = localObject3;
    if (bool) {
      localObject2 = "http://api.account.preview.n.xiaomi.net/pass";
    }
    g = (String)localObject2;
    Object localObject5 = "http://api.account.preview.n.xiaomi.net/pass/v2";
    if (bool) {
      localObject6 = "http://api.account.preview.n.xiaomi.net/pass/v2";
    } else {
      localObject6 = "https://api.account.xiaomi.com/pass/v2";
    }
    h = (String)localObject6;
    if (bool) {
      localObject3 = "http://api.account.preview.n.xiaomi.net/pass/v2/safe";
    } else {
      localObject3 = "https://api.account.xiaomi.com/pass/v2/safe";
    }
    i = (String)localObject3;
    if (!bool) {
      localObject5 = "https://api.account.xiaomi.com/pass/v2";
    }
    j = (String)localObject5;
    if (bool) {
      localObject7 = "http://api.account.preview.n.xiaomi.net/pass/v3";
    } else {
      localObject7 = "https://api.account.xiaomi.com/pass/v3";
    }
    k = (String)localObject7;
    if (bool) {
      localObject5 = "http://account.preview.n.xiaomi.net/oauth2/";
    } else {
      localObject5 = "https://account.xiaomi.com/oauth2/";
    }
    l = (String)localObject5;
    if (bool) {
      localObject8 = "http://api.device.preview.n.xiaomi.net";
    } else {
      localObject8 = "https://api.device.xiaomi.net";
    }
    m = (String)localObject8;
    Object localObject9 = new StringBuilder();
    ((StringBuilder)localObject9).append((String)localObject3);
    ((StringBuilder)localObject9).append("/user/vipLevelInfo");
    n = ((StringBuilder)localObject9).toString();
    if (bool) {
      localObject9 = "http://api.micloud.preview.n.xiaomi.net/micAnonymous/mic/account/config";
    } else {
      localObject9 = "https://api.g.micloud.xiaomi.net/micAnonymous/mic/account/config";
    }
    o = (String)localObject9;
    localObject9 = new StringBuilder();
    ((StringBuilder)localObject9).append((String)localObject8);
    ((StringBuilder)localObject9).append("/modelinfos");
    p = ((StringBuilder)localObject9).toString();
    localObject9 = new StringBuilder();
    ((StringBuilder)localObject9).append((String)localObject8);
    ((StringBuilder)localObject9).append("/api/user/device/setting");
    q = ((StringBuilder)localObject9).toString();
    localObject9 = new StringBuilder();
    ((StringBuilder)localObject9).append((String)localObject8);
    ((StringBuilder)localObject9).append("/api/user/devices/setting");
    r = ((StringBuilder)localObject9).toString();
    Object localObject8 = new StringBuilder();
    ((StringBuilder)localObject8).append((String)localObject1);
    ((StringBuilder)localObject8).append("/serviceLoginAuth2");
    s = ((StringBuilder)localObject8).toString();
    localObject8 = new StringBuilder();
    ((StringBuilder)localObject8).append((String)localObject1);
    ((StringBuilder)localObject8).append("/serviceLoginAuth2");
    t = ((StringBuilder)localObject8).toString();
    localObject8 = new StringBuilder();
    ((StringBuilder)localObject8).append((String)localObject4);
    ((StringBuilder)localObject8).append("/phoneToken/exchangePhoneToken");
    u = ((StringBuilder)localObject8).toString();
    localObject8 = new StringBuilder();
    ((StringBuilder)localObject8).append((String)localObject1);
    ((StringBuilder)localObject8).append("/loginStep2");
    v = ((StringBuilder)localObject8).toString();
    localObject8 = new StringBuilder();
    ((StringBuilder)localObject8).append((String)localObject7);
    ((StringBuilder)localObject8).append("/user@id");
    w = ((StringBuilder)localObject8).toString();
    Object localObject7 = new StringBuilder();
    ((StringBuilder)localObject7).append((String)localObject3);
    ((StringBuilder)localObject7).append("/user/coreInfo");
    x = ((StringBuilder)localObject7).toString();
    if (bool) {
      localObject7 = "http://open.account.preview.n.xiaomi.net/third/";
    } else {
      localObject7 = "https://open.account.xiaomi.com/third/";
    }
    y = (String)localObject7;
    localObject8 = new StringBuilder();
    ((StringBuilder)localObject8).append((String)localObject3);
    ((StringBuilder)localObject8).append("/user/updateIconRequest");
    z = ((StringBuilder)localObject8).toString();
    localObject8 = new StringBuilder();
    ((StringBuilder)localObject8).append((String)localObject3);
    ((StringBuilder)localObject8).append("/user/updateIconCommit");
    A = ((StringBuilder)localObject8).toString();
    localObject8 = new StringBuilder();
    ((StringBuilder)localObject8).append((String)localObject6);
    ((StringBuilder)localObject8).append("/user/full");
    B = ((StringBuilder)localObject8).toString();
    Object localObject6 = new StringBuilder();
    ((StringBuilder)localObject6).append((String)localObject2);
    ((StringBuilder)localObject6).append("/user/full/@phone");
    C = ((StringBuilder)localObject6).toString();
    localObject6 = new StringBuilder();
    ((StringBuilder)localObject6).append((String)localObject2);
    ((StringBuilder)localObject6).append("/sendActivateMessage");
    D = ((StringBuilder)localObject6).toString();
    localObject6 = new StringBuilder();
    ((StringBuilder)localObject6).append((String)localObject1);
    ((StringBuilder)localObject6).append("/sendPhoneTicket");
    E = ((StringBuilder)localObject6).toString();
    localObject6 = new StringBuilder();
    ((StringBuilder)localObject6).append((String)localObject1);
    ((StringBuilder)localObject6).append("/getCode?icodeType=register");
    F = ((StringBuilder)localObject6).toString();
    localObject6 = new StringBuilder();
    ((StringBuilder)localObject6).append((String)localObject1);
    ((StringBuilder)localObject6).append("/verifyPhoneRegTicket");
    G = ((StringBuilder)localObject6).toString();
    localObject6 = new StringBuilder();
    ((StringBuilder)localObject6).append((String)localObject1);
    ((StringBuilder)localObject6).append("/sendPhoneRegTicket");
    H = ((StringBuilder)localObject6).toString();
    localObject6 = new StringBuilder();
    ((StringBuilder)localObject6).append((String)localObject1);
    ((StringBuilder)localObject6).append("/verifyRegPhone");
    I = ((StringBuilder)localObject6).toString();
    localObject6 = new StringBuilder();
    ((StringBuilder)localObject6).append((String)localObject1);
    ((StringBuilder)localObject6).append("/tokenRegister");
    J = ((StringBuilder)localObject6).toString();
    localObject6 = new StringBuilder();
    ((StringBuilder)localObject6).append((String)localObject1);
    ((StringBuilder)localObject6).append("/auth/resetPassword");
    K = ((StringBuilder)localObject6).toString();
    localObject6 = new StringBuilder();
    ((StringBuilder)localObject6).append((String)localObject5);
    ((StringBuilder)localObject6).append("authorize");
    L = ((StringBuilder)localObject6).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject1);
    ((StringBuilder)localObject5).append("/serviceLogin");
    M = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject1);
    ((StringBuilder)localObject5).append("/serviceLogin");
    N = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject7);
    ((StringBuilder)localObject5).append("getToken");
    O = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject7);
    ((StringBuilder)localObject5).append("refreshToken");
    P = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/profile");
    Q = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/checkSafeEmailBindParams");
    R = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/sendBindSafeEmailVerifyMessage");
    S = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/sendBindAuthPhoneVerifyMessage");
    T = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/addPhone");
    U = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/updatePhone");
    V = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/deletePhone");
    W = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/replaceSafeEmailAddress");
    X = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/addSafeEmailAddress");
    Y = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/sendEmailActivateMessage");
    Z = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/setSafeQuestions");
    a0 = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/addPhoneAuth");
    b0 = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/updatePhoneAuth");
    c0 = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/deletePhoneAuth");
    d0 = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/replaceSafeEmailAddressAuth");
    e0 = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/addSafeEmailAddressAuth");
    f0 = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/sendEmailActivateMessageAuth");
    g0 = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/setSafeQuestionsAuth");
    h0 = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/modifySafePhoneAuth");
    i0 = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/native/changePasswordAuth");
    j0 = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/checkPhoneActivateStatus");
    k0 = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject1);
    ((StringBuilder)localObject5).append("/getCode?icodeType=antispam");
    l0 = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/changePassword");
    m0 = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/region");
    n0 = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/setLocation");
    o0 = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/setEducation");
    p0 = ((StringBuilder)localObject5).toString();
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append((String)localObject3);
    ((StringBuilder)localObject5).append("/user/setIncome");
    q0 = ((StringBuilder)localObject5).toString();
    localObject3 = new StringBuilder();
    ((StringBuilder)localObject3).append(str);
    ((StringBuilder)localObject3).append("/appConf/randomPwd");
    r0 = ((StringBuilder)localObject3).toString();
    localObject3 = new StringBuilder();
    ((StringBuilder)localObject3).append((String)localObject1);
    ((StringBuilder)localObject3).append("/register");
    s0 = ((StringBuilder)localObject3).toString();
    localObject3 = new StringBuilder();
    ((StringBuilder)localObject3).append(str);
    ((StringBuilder)localObject3).append("/helpcenter");
    t0 = ((StringBuilder)localObject3).toString();
    localObject3 = new StringBuilder();
    ((StringBuilder)localObject3).append((String)localObject2);
    ((StringBuilder)localObject3).append("/configuration/cc");
    u0 = ((StringBuilder)localObject3).toString();
    localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append((String)localObject4);
    ((StringBuilder)localObject2).append("/confirmPhone/redPointClick");
    v0 = ((StringBuilder)localObject2).toString();
    localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append((String)localObject4);
    ((StringBuilder)localObject2).append("/confirmPhone/recyleStatus");
    w0 = ((StringBuilder)localObject2).toString();
    Object localObject4 = new StringBuilder();
    ((StringBuilder)localObject4).append((String)localObject1);
    ((StringBuilder)localObject4).append("/login/passtoken/refresh");
    x0 = ((StringBuilder)localObject4).toString();
    localObject4 = new StringBuilder();
    ((StringBuilder)localObject4).append((String)localObject1);
    ((StringBuilder)localObject4).append("/login/passtoken/app/userprofile");
    y0 = ((StringBuilder)localObject4).toString();
    localObject4 = new StringBuilder();
    ((StringBuilder)localObject4).append((String)localObject1);
    ((StringBuilder)localObject4).append("/logoutDeviceWithIdentityAuth");
    z0 = ((StringBuilder)localObject4).toString();
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(str);
    ((StringBuilder)localObject1).append("/fe/family");
    A0 = ((StringBuilder)localObject1).toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.d
 * JD-Core Version:    0.7.0.1
 */