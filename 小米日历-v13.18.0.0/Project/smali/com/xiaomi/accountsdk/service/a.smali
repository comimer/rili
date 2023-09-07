.class public Lcom/xiaomi/accountsdk/service/a;
.super Ljava/lang/Object;
.source "PassportCommonServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/service/a$b;
    }
.end annotation


# direct methods
.method private static a(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.xiaomi.account.action.COMMON_SERVICE"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "com.xiaomi.account"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    new-instance v1, Landroid/content/ComponentName;

    .line 43
    .line 44
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 45
    .line 46
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 49
    .line 50
    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const/16 v0, 0x80

    .line 58
    .line 59
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    if-eqz p0, :cond_1

    .line 64
    .line 65
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 66
    .line 67
    if-eqz p0, :cond_1

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    instance-of p1, p0, Ljava/lang/Integer;

    .line 74
    .line 75
    if-eqz p1, :cond_1

    .line 76
    .line 77
    check-cast p0, Ljava/lang/Integer;

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    if-lt p0, p2, :cond_0

    .line 84
    .line 85
    const/4 v2, 0x1

    .line 86
    :cond_0
    return v2

    .line 87
    :catch_0
    move-exception p0

    .line 88
    const-string p1, "PassportCommonServiceClient"

    .line 89
    .line 90
    const-string p2, "component not found"

    .line 91
    .line 92
    invoke-static {p1, p2, p0}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    return v2
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;II)Lcom/xiaomi/accountsdk/service/DeviceInfoResult;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/xiaomi/accountsdk/service/a;->c(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ly5/c;

    .line 9
    .line 10
    invoke-direct {v0}, Ly5/c;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/xiaomi/accountsdk/service/a$a;

    .line 14
    .line 15
    invoke-direct {v2, p0, v0, p1, p2}, Lcom/xiaomi/accountsdk/service/a$a;-><init>(Landroid/content/Context;Ly5/a;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ly5/b;->b()Z

    .line 19
    .line 20
    .line 21
    int-to-long p0, p3

    .line 22
    :try_start_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 23
    .line 24
    invoke-virtual {v0, p0, p1, p2}, Ly5/a;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    return-object p0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    goto :goto_0

    .line 33
    :catch_1
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :catch_2
    move-exception p0

    .line 36
    :goto_0
    const-string p1, "PassportCommonServiceClient"

    .line 37
    .line 38
    const-string p2, "getDeviceInfoRpc"

    .line 39
    .line 40
    invoke-static {p1, p2, p0}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;

    .line 44
    .line 45
    invoke-direct {p1, v1}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;-><init>(Landroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    sget-object p2, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->ERROR_EXECUTION_EXCEPTION:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;->f(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;)Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p1, p0}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;->g(Ljava/lang/String;)Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;->e()Lcom/xiaomi/accountsdk/service/DeviceInfoResult;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :cond_0
    new-instance p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;

    .line 68
    .line 69
    invoke-direct {p0, v1}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;-><init>(Landroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    sget-object p1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->ERROR_NOT_SUPPORTED:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;->f(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;)Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string p1, "GetDeviceInfo feature is not yet supported by this version of XiaomiAccount, please update a newer version."

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;->g(Ljava/lang/String;)Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;->e()Lcom/xiaomi/accountsdk/service/DeviceInfoResult;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const-string v0, "feature_get_device_info_version"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {p0, v0, v1}, Lcom/xiaomi/accountsdk/service/a;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
