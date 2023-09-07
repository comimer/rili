.class public Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;
.super Ljava/lang/Object;
.source "SNSTokenLoginResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bindLimit:Z

.field public final callback:Ljava/lang/String;

.field public hasLocalChannel:Ljava/lang/Boolean;

.field public final notificationUrl:Ljava/lang/String;

.field public final openId:Ljava/lang/String;

.field public final passToken:Ljava/lang/String;

.field public final sid:Ljava/lang/String;

.field public final snsBindTryUrl:Ljava/lang/String;

.field public snsLoginUrl:Ljava/lang/String;

.field public final snsTokenPh:Ljava/lang/String;

.field public final status:I

.field public final userId:Ljava/lang/String;

.field public final webViewCallback:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->status:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->sid:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->webViewCallback:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->callback:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->notificationUrl:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->userId:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->passToken:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->snsBindTryUrl:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->snsTokenPh:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->openId:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->snsLoginUrl:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->bindLimit:Z

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    if-ne p1, v2, :cond_2

    move v1, v2

    .line 31
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->hasLocalChannel:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;->a(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->status:I

    .line 5
    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;->b(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->sid:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;->f(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->webViewCallback:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;->g(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->callback:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;->h(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->notificationUrl:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;->i(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->userId:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;->j(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->passToken:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;->k(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->snsBindTryUrl:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;->l(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->snsTokenPh:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;->m(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->openId:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;->c(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->snsLoginUrl:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;->d(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->bindLimit:Z

    .line 16
    invoke-static {p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;->e(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->hasLocalChannel:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;-><init>(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->status:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->sid:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->webViewCallback:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->callback:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->notificationUrl:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->userId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->passToken:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->snsBindTryUrl:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->snsTokenPh:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->openId:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->snsLoginUrl:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-boolean p2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->bindLimit:Z

    .line 57
    .line 58
    int-to-byte p2, p2

    .line 59
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->hasLocalChannel:Ljava/lang/Boolean;

    .line 63
    .line 64
    if-nez p2, :cond_0

    .line 65
    .line 66
    const/4 p2, 0x0

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_1

    .line 73
    .line 74
    const/4 p2, 0x1

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const/4 p2, 0x2

    .line 77
    :goto_0
    int-to-byte p2, p2

    .line 78
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 79
    .line 80
    .line 81
    return-void
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
