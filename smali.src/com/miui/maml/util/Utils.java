package com.miui.maml.util;

import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff.Mode;
import android.miui.Shell;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.maml.data.IndexedVariable;
import com.miui.maml.data.Variables;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import miuix.core.util.b;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class Utils
{
  private static ArrayList<String> INTENT_BLACK_LIST;
  private static final int INVALID = -2;
  private static int sAcrossUsersFullPermission = -2;
  private static int sAcrossUsersPermission = -2;
  private static Context sAppContext;
  
  static
  {
    ArrayList localArrayList = new ArrayList();
    INTENT_BLACK_LIST = localArrayList;
    localArrayList.add("android.intent.action.AIRPLANE_MODE");
    INTENT_BLACK_LIST.add("android.intent.action.BATTERY_CHANGED");
    INTENT_BLACK_LIST.add("android.intent.action.BATTERY_LOW");
    INTENT_BLACK_LIST.add("android.intent.action.BATTERY_OKAY");
    INTENT_BLACK_LIST.add("android.intent.action.BOOT_COMPLETED");
    INTENT_BLACK_LIST.add("android.intent.action.CONFIGURATION_CHANGED");
    INTENT_BLACK_LIST.add("android.intent.action.DEVICE_STORAGE_LOW");
    INTENT_BLACK_LIST.add("android.intent.action.DEVICE_STORAGE_OK");
    INTENT_BLACK_LIST.add("android.intent.action.DREAMING_STARTED");
    INTENT_BLACK_LIST.add("android.intent.action.DREAMING_STOPPED");
    INTENT_BLACK_LIST.add("android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE");
    INTENT_BLACK_LIST.add("android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE");
    INTENT_BLACK_LIST.add("android.intent.action.LOCALE_CHANGED");
    INTENT_BLACK_LIST.add("android.intent.action.MY_PACKAGE_REPLACED");
    INTENT_BLACK_LIST.add("android.intent.action.NEW_OUTGOING_CALL");
    INTENT_BLACK_LIST.add("android.intent.action.PACKAGE_ADDED");
    INTENT_BLACK_LIST.add("android.intent.action.PACKAGE_CHANGED");
    INTENT_BLACK_LIST.add("android.intent.action.PACKAGE_DATA_CLEARED");
    INTENT_BLACK_LIST.add("android.intent.action.PACKAGE_FIRST_LAUNCH");
    INTENT_BLACK_LIST.add("android.intent.action.PACKAGE_FULLY_REMOVED");
    INTENT_BLACK_LIST.add("android.intent.action.PACKAGE_INSTALL");
    INTENT_BLACK_LIST.add("android.intent.action.PACKAGE_NEEDS_VERIFICATION");
    INTENT_BLACK_LIST.add("android.intent.action.PACKAGE_REMOVED");
    INTENT_BLACK_LIST.add("android.intent.action.PACKAGE_REPLACED");
    INTENT_BLACK_LIST.add("android.intent.action.PACKAGE_RESTARTED");
    INTENT_BLACK_LIST.add("android.intent.action.PACKAGE_VERIFIED");
    INTENT_BLACK_LIST.add("android.intent.action.ACTION_POWER_CONNECTED");
    INTENT_BLACK_LIST.add("android.intent.action.ACTION_POWER_DISCONNECTED");
    INTENT_BLACK_LIST.add("android.intent.action.REBOOT");
    INTENT_BLACK_LIST.add("android.intent.action.SCREEN_OFF");
    INTENT_BLACK_LIST.add("android.intent.action.SCREEN_ON");
    INTENT_BLACK_LIST.add("android.intent.action.ACTION_SHUTDOWN");
    INTENT_BLACK_LIST.add("android.intent.action.TIMEZONE_CHANGED");
    INTENT_BLACK_LIST.add("android.intent.action.TIME_TICK");
    INTENT_BLACK_LIST.add("android.intent.action.UID_REMOVED");
    INTENT_BLACK_LIST.add("android.intent.action.USER_PRESENT");
  }
  
  public static double Dist(Point paramPoint1, Point paramPoint2, boolean paramBoolean)
  {
    double d1 = paramPoint1.x - paramPoint2.x;
    double d2 = paramPoint1.y - paramPoint2.y;
    if (paramBoolean) {
      return Math.sqrt(d1 * d1 + d2 * d2);
    }
    return d1 * d1 + d2 * d2;
  }
  
  public static String addFileNameSuffix(String paramString1, String paramString2)
  {
    return addFileNameSuffix(paramString1, "_", paramString2);
  }
  
  public static String addFileNameSuffix(String paramString1, String paramString2, String paramString3)
  {
    int i = paramString1.indexOf('.');
    if (i == -1) {
      return paramString1;
    }
    StringBuilder localStringBuilder = new StringBuilder(paramString1.substring(0, i));
    localStringBuilder.append(paramString2);
    localStringBuilder.append(paramString3);
    localStringBuilder.append(paramString1.substring(i));
    return localStringBuilder.toString();
  }
  
  private static boolean arrContains(String[] paramArrayOfString, String paramString)
  {
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++) {
      if (TextUtils.equals(paramArrayOfString[j], paramString)) {
        return true;
      }
    }
    return false;
  }
  
  public static boolean arrayContains(String[] paramArrayOfString, String paramString)
  {
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++) {
      if (equals(paramArrayOfString[j], paramString)) {
        return true;
      }
    }
    return false;
  }
  
  public static void asserts(boolean paramBoolean)
    throws Exception
  {
    asserts(paramBoolean, "assert error");
  }
  
  public static void asserts(boolean paramBoolean, String paramString)
    throws Exception
  {
    if (paramBoolean) {
      return;
    }
    throw new Exception(paramString);
  }
  
  public static void copyFile(String paramString1, String paramString2)
  {
    b.a(new File(paramString1), new File(paramString2));
  }
  
  public static String doubleToString(double paramDouble)
  {
    String str1 = String.valueOf(paramDouble);
    String str2 = str1;
    if (str1.endsWith(".0")) {
      str2 = str1.substring(0, str1.length() - 2);
    }
    return str2;
  }
  
  public static boolean equals(Object paramObject1, Object paramObject2)
  {
    boolean bool;
    if ((paramObject1 != paramObject2) && ((paramObject1 == null) || (!paramObject1.equals(paramObject2)))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public static Context getAppContext()
  {
    return sAppContext;
  }
  
  public static float getAttrAsFloat(Element paramElement, String paramString, float paramFloat)
  {
    paramElement = paramElement.getAttribute(paramString);
    if (!TextUtils.isEmpty(paramElement)) {}
    try
    {
      float f = Float.parseFloat(paramElement);
      return f;
    }
    catch (NumberFormatException paramElement)
    {
      label22:
      break label22;
    }
    return paramFloat;
  }
  
  public static float getAttrAsFloatThrows(Element paramElement, String paramString)
    throws NumberFormatException
  {
    return Float.parseFloat(paramElement.getAttribute(paramString));
  }
  
  public static int getAttrAsInt(Element paramElement, String paramString, int paramInt)
  {
    paramElement = paramElement.getAttribute(paramString);
    if (!TextUtils.isEmpty(paramElement)) {}
    try
    {
      int i = Integer.parseInt(paramElement);
      return i;
    }
    catch (NumberFormatException paramElement)
    {
      label22:
      break label22;
    }
    return paramInt;
  }
  
  public static int getAttrAsIntThrows(Element paramElement, String paramString)
    throws NumberFormatException
  {
    return Integer.parseInt(paramElement.getAttribute(paramString));
  }
  
  public static long getAttrAsLong(Element paramElement, String paramString, long paramLong)
  {
    paramElement = paramElement.getAttribute(paramString);
    if (!TextUtils.isEmpty(paramElement)) {}
    try
    {
      long l = Long.parseLong(paramElement);
      return l;
    }
    catch (NumberFormatException paramElement)
    {
      label24:
      break label24;
    }
    return paramLong;
  }
  
  public static long getAttrAsLongThrows(Element paramElement, String paramString)
    throws NumberFormatException
  {
    return Long.parseLong(paramElement.getAttribute(paramString));
  }
  
  public static Element getChild(Element paramElement, String paramString)
  {
    if (paramElement == null) {
      return null;
    }
    paramElement = paramElement.getChildNodes();
    for (int i = 0; i < paramElement.getLength(); i++)
    {
      Node localNode = paramElement.item(i);
      if ((localNode.getNodeType() == 1) && (localNode.getNodeName().equalsIgnoreCase(paramString))) {
        return (Element)localNode;
      }
    }
    return null;
  }
  
  public static PorterDuff.Mode getPorterDuffMode(int paramInt)
  {
    return getPorterDuffMode(paramInt, PorterDuff.Mode.SRC_OVER);
  }
  
  public static PorterDuff.Mode getPorterDuffMode(int paramInt, PorterDuff.Mode paramMode)
  {
    PorterDuff.Mode[] arrayOfMode = PorterDuff.Mode.values();
    int i = arrayOfMode.length;
    PorterDuff.Mode localMode;
    for (int j = 0;; j++)
    {
      localMode = paramMode;
      if (j >= i) {
        break;
      }
      localMode = arrayOfMode[j];
      if (localMode.ordinal() == paramInt) {
        break;
      }
    }
    return localMode;
  }
  
  public static PorterDuff.Mode getPorterDuffMode(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return PorterDuff.Mode.SRC_OVER;
    }
    PorterDuff.Mode localMode1 = PorterDuff.Mode.SRC_OVER;
    PorterDuff.Mode[] arrayOfMode = PorterDuff.Mode.values();
    int i = arrayOfMode.length;
    PorterDuff.Mode localMode2;
    for (int j = 0;; j++)
    {
      localMode2 = localMode1;
      if (j >= i) {
        break;
      }
      localMode2 = arrayOfMode[j];
      if (paramString.equalsIgnoreCase(localMode2.name())) {
        break;
      }
    }
    return localMode2;
  }
  
  public static double getVariableNumber(String paramString, Variables paramVariables)
  {
    return new IndexedVariable(paramString, paramVariables, true).getDouble();
  }
  
  public static String getVariableString(String paramString, Variables paramVariables)
  {
    return new IndexedVariable(paramString, paramVariables, false).getString();
  }
  
  public static void initContextIfNeed(Context paramContext)
  {
    if (sAppContext == null) {
      sAppContext = paramContext;
    }
  }
  
  public static boolean isEmpty(String paramString)
  {
    boolean bool;
    if ((paramString != null) && (paramString.length() != 0)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public static boolean isProtectedIntent(String paramString)
  {
    boolean bool;
    if (paramString == null) {
      bool = false;
    } else {
      bool = INTENT_BLACK_LIST.contains(paramString.trim());
    }
    return bool;
  }
  
  public static int mixAlpha(int paramInt1, int paramInt2)
  {
    if (paramInt1 >= 255) {
      paramInt1 = paramInt2;
    } else if (paramInt2 < 255) {
      paramInt1 = Math.round(paramInt1 * paramInt2 / 255.0F);
    }
    return Math.min(255, Math.max(0, paramInt1));
  }
  
  public static String numberToString(Number paramNumber)
  {
    String str = String.valueOf(paramNumber);
    paramNumber = str;
    if (str.endsWith(".0")) {
      paramNumber = str.substring(0, str.length() - 2);
    }
    return paramNumber;
  }
  
  public static boolean onMuiltDisplayType2()
  {
    boolean bool = false;
    if (SystemProperties.getInt("persist.sys.muiltdisplay_type", 0) == 2) {
      bool = true;
    }
    return bool;
  }
  
  public static double parseDouble(String paramString)
  {
    String str = paramString;
    if (paramString.startsWith("+"))
    {
      str = paramString;
      if (paramString.length() > 1) {
        str = paramString.substring(1);
      }
    }
    return Double.parseDouble(str);
  }
  
  public static Point pointProjectionOnSegment(Point paramPoint1, Point paramPoint2, Point paramPoint3, boolean paramBoolean)
  {
    Point localPoint = paramPoint2.minus(paramPoint1);
    paramPoint3 = paramPoint3.minus(paramPoint1);
    double d = (localPoint.x * paramPoint3.x + localPoint.y * paramPoint3.y) / Dist(paramPoint1, paramPoint2, false);
    boolean bool = d < 0.0D;
    if ((!bool) && (d <= 1.0D))
    {
      localPoint.x *= d;
      localPoint.y *= d;
      localPoint.Offset(paramPoint1);
      return localPoint;
    }
    if (!paramBoolean) {
      paramPoint1 = null;
    } else if (!bool) {
      paramPoint1 = paramPoint2;
    }
    return paramPoint1;
  }
  
  public static void putVariableNumber(String paramString, Variables paramVariables, double paramDouble)
  {
    paramVariables.put(paramString, paramDouble);
  }
  
  public static void putVariableNumber(String paramString, Variables paramVariables, Double paramDouble)
  {
    paramVariables.put(paramString, paramDouble.doubleValue());
  }
  
  public static void putVariableString(String paramString1, Variables paramVariables, String paramString2)
  {
    paramVariables.put(paramString1, paramString2);
  }
  
  public static boolean removeFile(String paramString)
  {
    if (Build.VERSION.SDK_INT > 27) {
      return rm(paramString);
    }
    return Shell.remove(paramString);
  }
  
  public static boolean rm(String paramString)
  {
    boolean bool = isEmpty(paramString);
    int i = 0;
    if (bool) {
      return false;
    }
    paramString = new File(paramString);
    if (paramString.isDirectory())
    {
      File[] arrayOfFile = paramString.listFiles();
      if ((arrayOfFile != null) && (arrayOfFile.length > 0))
      {
        int j = arrayOfFile.length;
        while (i < j)
        {
          rm(arrayOfFile[i].getPath());
          i++;
        }
      }
    }
    return paramString.delete();
  }
  
  public static void sendBroadcast(Context paramContext, Intent paramIntent)
  {
    if (sAcrossUsersPermission == -2) {
      sAcrossUsersPermission = paramContext.checkSelfPermission("android.permission.INTERACT_ACROSS_USERS");
    }
    if (sAcrossUsersPermission == 0) {
      paramContext.sendBroadcastAsUser(paramIntent, HideSdkDependencyUtils.UserHandle_CURRENT());
    } else {
      paramContext.sendBroadcast(paramIntent);
    }
  }
  
  public static byte[] splitByteArray(String paramString)
  {
    return splitByteArray(paramString, 10);
  }
  
  public static byte[] splitByteArray(String paramString, int paramInt)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    paramString = paramString.split(",");
    int i = paramString.length;
    byte[] arrayOfByte = new byte[i];
    int j = 0;
    for (;;)
    {
      if (j < i) {}
      try
      {
        arrayOfByte[j] = Byte.parseByte(paramString[j], paramInt);
        label45:
        j++;
        continue;
        return arrayOfByte;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        break label45;
      }
    }
  }
  
  public static double[] splitDoubleArray(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    String[] arrayOfString = paramString.split(",");
    int i = arrayOfString.length;
    double[] arrayOfDouble = new double[i];
    int j = 0;
    for (;;)
    {
      if (j < i) {}
      try
      {
        arrayOfDouble[j] = Double.parseDouble(arrayOfString[j]);
        label44:
        j++;
        continue;
        return arrayOfDouble;
      }
      catch (NumberFormatException paramString)
      {
        break label44;
      }
    }
  }
  
  public static int[] splitIntArray(String paramString)
  {
    return splitIntArray(paramString, 10);
  }
  
  public static int[] splitIntArray(String paramString, int paramInt)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    paramString = paramString.split(",");
    int i = paramString.length;
    int[] arrayOfInt = new int[i];
    int j = 0;
    for (;;)
    {
      if (j < i) {}
      try
      {
        arrayOfInt[j] = Integer.parseInt(paramString[j], paramInt);
        label45:
        j++;
        continue;
        return arrayOfInt;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        break label45;
      }
    }
  }
  
  public static String[] splitStringArray(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      return null;
    }
    return paramString1.split(paramString2);
  }
  
  public static void startActivity(Context paramContext, Intent paramIntent, Bundle paramBundle)
  {
    boolean bool = "com.android.systemui".equals(paramContext.getPackageName());
    if ((bool) && (sAcrossUsersFullPermission == -2)) {
      sAcrossUsersFullPermission = paramContext.checkSelfPermission("android.permission.INTERACT_ACROSS_USERS_FULL");
    }
    if ((bool) && (sAcrossUsersFullPermission == 0)) {
      HideSdkDependencyUtils.Context_startActivityAsUser(paramContext, paramIntent, paramBundle, HideSdkDependencyUtils.UserHandle_CURRENT());
    } else {
      paramContext.startActivity(paramIntent, paramBundle);
    }
  }
  
  public static void startService(Context paramContext, Intent paramIntent)
  {
    if (sAcrossUsersPermission == -2) {
      sAcrossUsersPermission = paramContext.checkSelfPermission("android.permission.INTERACT_ACROSS_USERS");
    }
    if (sAcrossUsersPermission == 0) {
      HideSdkDependencyUtils.Context_startServiceAsUser(paramContext, paramIntent, HideSdkDependencyUtils.UserHandle_CURRENT());
    } else {
      paramContext.startService(paramIntent);
    }
  }
  
  public static double stringToDouble(String paramString, double paramDouble)
  {
    if (paramString == null) {
      return paramDouble;
    }
    try
    {
      double d = Double.parseDouble(paramString);
      return d;
    }
    catch (NumberFormatException paramString) {}
    return paramDouble;
  }
  
  public static void traverseXmlElementChildren(Element paramElement, String paramString, XmlTraverseListener paramXmlTraverseListener)
  {
    paramElement = paramElement.getChildNodes();
    for (int i = 0; i < paramElement.getLength(); i++)
    {
      Node localNode = paramElement.item(i);
      if ((localNode.getNodeType() == 1) && ((paramString == null) || (TextUtils.equals(localNode.getNodeName(), paramString)))) {
        paramXmlTraverseListener.onChild((Element)localNode);
      }
    }
  }
  
  public static void traverseXmlElementChildrenTags(Element paramElement, String[] paramArrayOfString, XmlTraverseListener paramXmlTraverseListener)
  {
    paramElement = paramElement.getChildNodes();
    for (int i = 0; i < paramElement.getLength(); i++)
    {
      Node localNode = paramElement.item(i);
      String str = localNode.getNodeName();
      if ((localNode.getNodeType() == 1) && ((paramArrayOfString == null) || (arrContains(paramArrayOfString, str)))) {
        paramXmlTraverseListener.onChild((Element)localNode);
      }
    }
  }
  
  public static void triggerGC()
  {
    Runtime.getRuntime().gc();
    Runtime.getRuntime().runFinalization();
  }
  
  public static void writeDataToFile(String paramString1, String paramString2)
  {
    if (isEmpty(paramString2)) {
      return;
    }
    try
    {
      b.e(paramString1, paramString2);
    }
    catch (IOException paramString1)
    {
      paramString1.printStackTrace();
    }
  }
  
  public static class GetChildWrapper
  {
    private Element mEle;
    
    public GetChildWrapper(Element paramElement)
    {
      this.mEle = paramElement;
    }
    
    public GetChildWrapper getChild(String paramString)
    {
      return new GetChildWrapper(Utils.getChild(this.mEle, paramString));
    }
    
    public Element getElement()
    {
      return this.mEle;
    }
  }
  
  public static class Point
  {
    public double x;
    public double y;
    
    public Point(double paramDouble1, double paramDouble2)
    {
      this.x = paramDouble1;
      this.y = paramDouble2;
    }
    
    public void Offset(Point paramPoint)
    {
      this.x += paramPoint.x;
      this.y += paramPoint.y;
    }
    
    Point minus(Point paramPoint)
    {
      return new Point(this.x - paramPoint.x, this.y - paramPoint.y);
    }
  }
  
  public static abstract interface XmlTraverseListener
  {
    public abstract void onChild(Element paramElement);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.Utils
 * JD-Core Version:    0.7.0.1
 */