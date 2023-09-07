package com.xiaomi.settingsdk.backup.data;

import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

public class DataPackage
  implements Parcelable
{
  public static final Parcelable.Creator<DataPackage> CREATOR = new a();
  public static final String KEY_DATA_PACKAGE = "data_package";
  public static final String KEY_VERSION = "version";
  private final Map<String, SettingItem<?>> mDataItems = new HashMap();
  private final Map<String, ParcelFileDescriptor> mFileItems = new HashMap();
  
  public static DataPackage fromWrappedBundle(Bundle paramBundle)
  {
    paramBundle = (Bundle)paramBundle.clone();
    paramBundle.setClassLoader(SettingItem.class.getClassLoader());
    return parseDataPackageBundle(paramBundle.getBundle("data_package"));
  }
  
  private Bundle getDataPackageBundle()
  {
    Bundle localBundle = new Bundle();
    Object localObject1 = this.mDataItems.entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Map.Entry)((Iterator)localObject1).next();
      localBundle.putParcelable((String)((Map.Entry)localObject2).getKey(), (SettingItem)((Map.Entry)localObject2).getValue());
    }
    Object localObject2 = this.mFileItems.entrySet().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject1 = (Map.Entry)((Iterator)localObject2).next();
      localBundle.putParcelable((String)((Map.Entry)localObject1).getKey(), (ParcelFileDescriptor)((Map.Entry)localObject1).getValue());
    }
    return localBundle;
  }
  
  public static int getVersionFromBundle(Bundle paramBundle)
  {
    return paramBundle.getInt("version");
  }
  
  private static DataPackage parseDataPackageBundle(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return null;
    }
    paramBundle.setClassLoader(SettingItem.class.getClassLoader());
    DataPackage localDataPackage = new DataPackage();
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Parcelable localParcelable = paramBundle.getParcelable(str);
      if ((localParcelable instanceof SettingItem)) {
        localDataPackage.mDataItems.put(str, (SettingItem)localParcelable);
      }
      if ((localParcelable instanceof ParcelFileDescriptor)) {
        localDataPackage.mFileItems.put(str, (ParcelFileDescriptor)localParcelable);
      }
    }
    return localDataPackage;
  }
  
  public void addAbstractDataItem(String paramString, SettingItem<?> paramSettingItem)
  {
    this.mDataItems.put(paramString, paramSettingItem);
  }
  
  public void addKeyFile(String paramString, File paramFile)
    throws FileNotFoundException
  {
    this.mFileItems.put(paramString, ParcelFileDescriptor.open(paramFile, 268435456));
  }
  
  public void addKeyJson(String paramString, JSONObject paramJSONObject)
  {
    KeyJsonSettingItem localKeyJsonSettingItem = new KeyJsonSettingItem();
    localKeyJsonSettingItem.key = paramString;
    localKeyJsonSettingItem.setValue(paramJSONObject);
    this.mDataItems.put(paramString, localKeyJsonSettingItem);
  }
  
  public void addKeyValue(String paramString1, String paramString2)
  {
    KeyStringSettingItem localKeyStringSettingItem = new KeyStringSettingItem();
    localKeyStringSettingItem.key = paramString1;
    localKeyStringSettingItem.setValue(paramString2);
    this.mDataItems.put(paramString1, localKeyStringSettingItem);
  }
  
  public void appendToWrappedBundle(Bundle paramBundle)
  {
    paramBundle.putBundle("data_package", getDataPackageBundle());
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public SettingItem<?> get(String paramString)
  {
    return (SettingItem)this.mDataItems.get(paramString);
  }
  
  public Map<String, SettingItem<?>> getDataItems()
  {
    return this.mDataItems;
  }
  
  public ParcelFileDescriptor getFile(String paramString)
  {
    return (ParcelFileDescriptor)this.mFileItems.get(paramString);
  }
  
  public Map<String, ParcelFileDescriptor> getFileItems()
  {
    return this.mFileItems;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeBundle(getDataPackageBundle());
  }
  
  static final class a
    implements Parcelable.Creator<DataPackage>
  {
    public DataPackage a(Parcel paramParcel)
    {
      return DataPackage.parseDataPackageBundle(paramParcel.readBundle());
    }
    
    public DataPackage[] b(int paramInt)
    {
      return new DataPackage[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.settingsdk.backup.data.DataPackage
 * JD-Core Version:    0.7.0.1
 */