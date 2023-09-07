package com.bumptech.glide.load;

public enum DataSource
{
  static
  {
    DataSource localDataSource1 = new DataSource("LOCAL", 0);
    LOCAL = localDataSource1;
    DataSource localDataSource2 = new DataSource("REMOTE", 1);
    REMOTE = localDataSource2;
    DataSource localDataSource3 = new DataSource("DATA_DISK_CACHE", 2);
    DATA_DISK_CACHE = localDataSource3;
    DataSource localDataSource4 = new DataSource("RESOURCE_DISK_CACHE", 3);
    RESOURCE_DISK_CACHE = localDataSource4;
    DataSource localDataSource5 = new DataSource("MEMORY_CACHE", 4);
    MEMORY_CACHE = localDataSource5;
    $VALUES = new DataSource[] { localDataSource1, localDataSource2, localDataSource3, localDataSource4, localDataSource5 };
  }
  
  private DataSource() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.DataSource
 * JD-Core Version:    0.7.0.1
 */