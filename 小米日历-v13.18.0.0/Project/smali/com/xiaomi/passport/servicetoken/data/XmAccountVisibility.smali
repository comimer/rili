.class public Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
.super Ljava/lang/Object;
.source "XmAccountVisibility.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;,
        Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_ACCOUNT:Ljava/lang/String; = "account"

.field private static final KEY_ACCOUNT_VISIBLE:Ljava/lang/String; = "visible"

.field private static final KEY_BUILD_SDK_VERSION:Ljava/lang/String; = "build_sdk_version"

.field private static final KEY_ERROR_CODE:Ljava/lang/String; = "error_code"

.field private static final KEY_ERROR_MSG:Ljava/lang/String; = "error_msg"

.field private static final KEY_NEW_CHOOSE_ACCOUNT_INTENT:Ljava/lang/String; = "new_choose_account_intent"


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final buildSdkVersion:I

.field public final errorCode:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public final errorMsg:Ljava/lang/String;

.field public final newChooseAccountIntent:Landroid/content/Intent;

.field public final visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
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

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->values()[Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    move-result-object v0

    const-string v1, "error_code"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->errorCode:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    const-string v0, "error_msg"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->errorMsg:Ljava/lang/String;

    const-string v0, "visible"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->visible:Z

    const-string v0, "account"

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->account:Landroid/accounts/Account;

    const-string v0, "build_sdk_version"

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->buildSdkVersion:I

    const-string v0, "new_choose_account_intent"

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->newChooseAccountIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;->a(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->errorCode:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 3
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;->b(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->errorMsg:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;->c(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->visible:Z

    .line 5
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;->d(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->account:Landroid/accounts/Account;

    .line 6
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;->e(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->buildSdkVersion:I

    .line 7
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;->f(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->newChooseAccountIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "AccountVisibility{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, ", errorCode="

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->errorCode:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    const-string v1, ", errorMessage=\'"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->errorMsg:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x27

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    const-string v2, ", accountVisible=\'"

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    iget-boolean v2, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->visible:Z

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x7d

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    new-instance p2, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->errorCode:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, "error_code"

    .line 13
    .line 14
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->errorMsg:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "error_msg"

    .line 20
    .line 21
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->visible:Z

    .line 25
    .line 26
    const-string v1, "visible"

    .line 27
    .line 28
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->account:Landroid/accounts/Account;

    .line 32
    .line 33
    const-string v1, "account"

    .line 34
    .line 35
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 36
    .line 37
    .line 38
    iget v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->buildSdkVersion:I

    .line 39
    .line 40
    const-string v1, "build_sdk_version"

    .line 41
    .line 42
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->newChooseAccountIntent:Landroid/content/Intent;

    .line 46
    .line 47
    const-string v1, "new_choose_account_intent"

    .line 48
    .line 49
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 53
    .line 54
    .line 55
    return-void
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
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
.end method
