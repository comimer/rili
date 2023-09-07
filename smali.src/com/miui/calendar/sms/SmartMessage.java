package com.miui.calendar.sms;

import android.text.TextUtils;
import androidx.annotation.Keep;
import com.miui.calendar.util.x;
import com.miui.calendar.util.z;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Keep
public class SmartMessage
  implements Serializable
{
  private static final String TAG = "Cal:D:SmartMessage";
  @Deprecated
  private int actionID;
  private List<HashMap> actionList;
  private int cardID;
  private String frameName;
  private Map<Integer, Item> items;
  private long millis;
  private OntologyType ontologyType = OntologyType.UNKNOWN;
  private String phoneNum;
  
  public static SmartMessage parse(String paramString, int paramInt)
  {
    if (TextUtils.isEmpty(paramString))
    {
      z.n("Cal:D:SmartMessage", "parse(): result is empty");
      return null;
    }
    try
    {
      SmartMessage localSmartMessage = (SmartMessage)x.a(paramString, SmartMessage.class);
      paramString = OntologyType.fromValue(paramInt);
      localSmartMessage.ontologyType = paramString;
      if (paramString == null)
      {
        z.a("Cal:D:SmartMessage", "parse(): ontologyType INVALID");
        return null;
      }
      return localSmartMessage;
    }
    catch (Exception paramString)
    {
      z.d("Cal:D:SmartMessage", "parse()", paramString);
    }
    return null;
  }
  
  public int getActionID()
  {
    return this.actionID;
  }
  
  public List<HashMap> getActionList()
  {
    return this.actionList;
  }
  
  public int getCardID()
  {
    return this.cardID;
  }
  
  public String getFrameName()
  {
    return this.frameName;
  }
  
  public Map<Integer, Item> getItems()
  {
    return this.items;
  }
  
  public long getMillis()
  {
    return this.millis;
  }
  
  public OntologyType getOntologyType()
  {
    return this.ontologyType;
  }
  
  public String getPhoneNum()
  {
    return this.phoneNum;
  }
  
  public String getValue(Integer paramInteger)
  {
    Map localMap = getItems();
    if (localMap.containsKey(paramInteger)) {
      return ((Item)localMap.get(paramInteger)).getValue();
    }
    return "";
  }
  
  public void setActionID(int paramInt)
  {
    this.actionID = paramInt;
  }
  
  public void setActionList(List<HashMap> paramList)
  {
    this.actionList = paramList;
  }
  
  public void setCardID(int paramInt)
  {
    this.cardID = paramInt;
  }
  
  public void setFrameName(String paramString)
  {
    this.frameName = paramString;
  }
  
  public void setItems(Map<Integer, Item> paramMap)
  {
    this.items = paramMap;
  }
  
  public void setMillis(long paramLong)
  {
    this.millis = paramLong;
  }
  
  public void setPhoneNum(String paramString)
  {
    this.phoneNum = paramString;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("SmartMessage{");
    localStringBuilder.append("ontologyType=");
    localStringBuilder.append(this.ontologyType);
    localStringBuilder.append(", cardID=");
    localStringBuilder.append(this.cardID);
    localStringBuilder.append(", actionID=");
    localStringBuilder.append(this.actionID);
    localStringBuilder.append(", frameName='");
    localStringBuilder.append(this.frameName);
    localStringBuilder.append('\'');
    localStringBuilder.append(", phoneNum='");
    localStringBuilder.append(this.phoneNum);
    localStringBuilder.append('\'');
    localStringBuilder.append(", millis=");
    localStringBuilder.append(this.millis);
    localStringBuilder.append(", items=");
    localStringBuilder.append(this.items);
    localStringBuilder.append(", actionList=");
    localStringBuilder.append(this.actionList);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public static class Item
    implements Serializable
  {
    private int endPosition;
    private int has;
    private int startPosition;
    private String value;
    
    public int getEndPosition()
    {
      return this.endPosition;
    }
    
    public int getHas()
    {
      return this.has;
    }
    
    public int getStartPosition()
    {
      return this.startPosition;
    }
    
    public String getValue()
    {
      return this.value;
    }
    
    public void setEndPosition(int paramInt)
    {
      this.endPosition = paramInt;
    }
    
    public void setHas(int paramInt)
    {
      this.has = paramInt;
    }
    
    public void setStartPosition(int paramInt)
    {
      this.startPosition = paramInt;
    }
    
    public void setValue(String paramString)
    {
      this.value = paramString;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder("Item{");
      localStringBuilder.append("value='");
      localStringBuilder.append(this.value);
      localStringBuilder.append('\'');
      localStringBuilder.append(", has=");
      localStringBuilder.append(this.has);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
  
  @Keep
  public static enum OntologyType
  {
    private int value;
    
    static
    {
      OntologyType localOntologyType1 = new OntologyType("UNKNOWN", 0, -1);
      UNKNOWN = localOntologyType1;
      OntologyType localOntologyType2 = new OntologyType("TRAIN", 1, 1);
      TRAIN = localOntologyType2;
      OntologyType localOntologyType3 = new OntologyType("FLIGHT", 2, 2);
      FLIGHT = localOntologyType3;
      OntologyType localOntologyType4 = new OntologyType("CREDIT", 3, 4);
      CREDIT = localOntologyType4;
      OntologyType localOntologyType5 = new OntologyType("MOVIE", 4, 10);
      MOVIE = localOntologyType5;
      OntologyType localOntologyType6 = new OntologyType("ELECTRICITY_BILL", 5, 11);
      ELECTRICITY_BILL = localOntologyType6;
      OntologyType localOntologyType7 = new OntologyType("GAS_BILL", 6, 12);
      GAS_BILL = localOntologyType7;
      OntologyType localOntologyType8 = new OntologyType("HOTEL", 7, 17);
      HOTEL = localOntologyType8;
      OntologyType localOntologyType9 = new OntologyType("LOAN", 8, 18);
      LOAN = localOntologyType9;
      $VALUES = new OntologyType[] { localOntologyType1, localOntologyType2, localOntologyType3, localOntologyType4, localOntologyType5, localOntologyType6, localOntologyType7, localOntologyType8, localOntologyType9 };
    }
    
    private OntologyType(int paramInt)
    {
      this.value = paramInt;
    }
    
    public static OntologyType fromValue(int paramInt)
    {
      for (OntologyType localOntologyType : ) {
        if (localOntologyType.value == paramInt) {
          return localOntologyType;
        }
      }
      ??? = new StringBuilder();
      ((StringBuilder)???).append("fromValue: value INVALID:");
      ((StringBuilder)???).append(paramInt);
      z.m("Cal:D:SmartMessage", ((StringBuilder)???).toString());
      return null;
    }
    
    public String toString()
    {
      return String.valueOf(this.value);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.sms.SmartMessage
 * JD-Core Version:    0.7.0.1
 */