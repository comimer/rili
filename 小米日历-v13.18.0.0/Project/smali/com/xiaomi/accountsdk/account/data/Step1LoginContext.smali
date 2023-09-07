.class public Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;
.super Ljava/lang/Object;
.source "Step1LoginContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$c;,
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;,
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;,
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$b;,
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$b;

.field private mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    .line 29
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->NOTIFICATION:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_0

    .line 30
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;->a:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;->b:Ljava/lang/String;

    .line 33
    new-instance v1, La6/k$h;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, La6/k$h;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;->c:La6/k$h;

    .line 34
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$b;

    goto :goto_0

    .line 35
    :cond_0
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->VERIFICATION:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_1

    .line 36
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->a:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 41
    new-instance v4, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-direct {v4, v1, v2, v3}, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->b:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->c:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$b;

    goto :goto_0

    .line 44
    :cond_1
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->NONE:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_2

    .line 45
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$c;-><init>()V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iput-object p1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$c;->a:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 47
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$b;

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->NONE:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    .line 4
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$c;-><init>()V

    .line 5
    iput-object p1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$c;->a:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 6
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    if-eqz v0, :cond_0

    .line 9
    check-cast p1, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    .line 10
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->NOTIFICATION:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    .line 11
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->getNotificationUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;->b:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->getLoginContent()La6/k$h;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;->c:La6/k$h;

    .line 15
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$b;

    goto :goto_0

    .line 16
    :cond_0
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;

    if-eqz v0, :cond_1

    .line 17
    check-cast p1, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;

    .line 18
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->VERIFICATION:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    .line 19
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;-><init>()V

    .line 20
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->a:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->getMetaLoginData()Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->b:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    .line 22
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->getStep1Token()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->c:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$b;

    :goto_0
    return-void

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported. "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLoginContext()Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$b;

    .line 2
    .line 3
    return-object v0
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

.method public getNextStep()Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    .line 2
    .line 3
    return-object v0
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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    .line 11
    .line 12
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->NOTIFICATION:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$b;

    .line 17
    .line 18
    check-cast p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;

    .line 19
    .line 20
    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;->c:La6/k$h;

    .line 31
    .line 32
    invoke-virtual {p2}, La6/k$h;->h()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->VERIFICATION:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    .line 41
    .line 42
    if-ne v0, v1, :cond_1

    .line 43
    .line 44
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$b;

    .line 45
    .line 46
    check-cast p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    .line 47
    .line 48
    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->a:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->b:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->sign:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->b:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->qs:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->b:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->callback:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object p2, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->c:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->NONE:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    .line 81
    .line 82
    if-ne v0, v1, :cond_2

    .line 83
    .line 84
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$b;

    .line 85
    .line 86
    check-cast v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$c;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$c;->a:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 89
    .line 90
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 91
    .line 92
    .line 93
    :cond_2
    :goto_0
    return-void
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
