.class public Lcom/xiaomi/passport/f;
.super Ljava/lang/Object;
.source "PassportSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/f$b;
    }
.end annotation


# static fields
.field private static volatile a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/passport/f$b;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/xiaomi/passport/f$b;->a(Lcom/xiaomi/passport/f$b;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/xiaomi/passport/f;->a:Z

    .line 6
    .line 7
    invoke-static {p1}, Lcom/xiaomi/passport/f$b;->b(Lcom/xiaomi/passport/f$b;)Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface$AccountStatType;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface$AccountStatType;->NONE:Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface$AccountStatType;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/xiaomi/passport/f$b;->a(Lcom/xiaomi/passport/f$b;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {p0, v0, v1}, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->c(Landroid/content/Context;Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface$AccountStatType;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/passport/f$b;->c(Lcom/xiaomi/passport/f$b;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {p0, v0}, Lcom/xiaomi/passport/accountmanager/g;->C(Landroid/content/Context;Z)Lcom/xiaomi/passport/accountmanager/g;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/xiaomi/passport/f$b;->d(Lcom/xiaomi/passport/f$b;)Lcom/xiaomi/accountsdk/utils/b$c;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-static {p1}, Lcom/xiaomi/passport/f$b;->d(Lcom/xiaomi/passport/f$b;)Lcom/xiaomi/accountsdk/utils/b$c;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/b;->n(Lcom/xiaomi/accountsdk/utils/b$c;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    new-instance p1, Lx6/a;

    .line 43
    .line 44
    invoke-direct {p1}, Lx6/a;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lu5/c;->d(Lu5/a;)V

    .line 48
    .line 49
    .line 50
    const-string p1, "PassportSDK/5.3.0.release.8"

    .line 51
    .line 52
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/f;->b(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string p1, "passport-ui/5.3.0.release.8"

    .line 56
    .line 57
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/f;->b(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string p1, "XiaomiAccountSSO/5.3.0.release.8"

    .line 61
    .line 62
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/f;->b(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Ls6/d;

    .line 66
    .line 67
    invoke-direct {p1}, Ls6/d;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Ll6/a;->i(Ll6/a;)V

    .line 71
    .line 72
    .line 73
    new-instance p1, Lr6/a;

    .line 74
    .line 75
    new-instance v0, Lcom/xiaomi/passport/f$a;

    .line 76
    .line 77
    invoke-direct {v0, p0}, Lcom/xiaomi/passport/f$a;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    const/4 p0, 0x0

    .line 81
    invoke-direct {p1, v0, p0, p0}, Lr6/a;-><init>(Lr6/a$a;Lr6/a$d;Lr6/a$b;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lr6/a;->c()V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$a;->b()Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$a;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    new-instance p1, Lcom/xiaomi/accountsdk/service/b;

    .line 92
    .line 93
    invoke-direct {p1}, Lcom/xiaomi/accountsdk/service/b;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$a;->d(Lz5/f;)V

    .line 97
    .line 98
    .line 99
    return-void
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
.end method

.method public static b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/xiaomi/passport/f;->a:Z

    .line 2
    .line 3
    return v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
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
