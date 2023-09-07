.class public Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
.super Ljava/lang/Object;
.source "RegisterUserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;,
        Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_AVATAR_ADDRESS:Ljava/lang/String; = "avatar_address"

.field private static final KEY_BIND_TIME:Ljava/lang/String; = "bind_time"

.field private static final KEY_HAS_PASSWORD:Ljava/lang/String; = "has_pwd"

.field private static final KEY_MASKED_USER_ID:Ljava/lang/String; = "masked_user_id"

.field private static final KEY_NEED_GET_ACTIVE_TIME:Ljava/lang/String; = "need_get_active_time"

.field private static final KEY_NEED_TOAST:Ljava/lang/String; = "need_toast"

.field private static final KEY_PHONE:Ljava/lang/String; = "phone"

.field private static final KEY_REGISTER_PWD:Ljava/lang/String; = "register_pwd"

.field private static final KEY_REGISTER_STATUS:Ljava/lang/String; = "register_status"

.field private static final KEY_TICKET_TOKEN:Ljava/lang/String; = "ticket_token"

.field private static final KEY_TMP_PHONE_TOKEN:Ljava/lang/String; = "tmp_phone_token"

.field private static final KEY_USER_ID:Ljava/lang/String; = "user_id"

.field private static final KEY_USER_NAME:Ljava/lang/String; = "user_name"

.field public static final STATUS_NOT_REGISTERED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_USED_NOT_RECYCLED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_USED_POSSIBLY_RECYCLED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final avatarAddress:Ljava/lang/String;

.field public final bindTime:J

.field public final hasPwd:Z

.field public final maskedUserId:Ljava/lang/String;

.field public final needGetActiveTime:Z

.field public final needToast:Z

.field public final phone:Ljava/lang/String;

.field public final registerPwd:Z

.field public final status:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

.field public final ticketToken:Ljava/lang/String;

.field public final tmpPhoneToken:Ljava/lang/String;

.field public final userId:Ljava/lang/String;

.field public final userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->getInstance(I)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->status:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    .line 4
    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userId:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userName:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->avatarAddress:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->ticketToken:Ljava/lang/String;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->phone:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->maskedUserId:Ljava/lang/String;

    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->hasPwd:Z

    const-wide/16 p3, -0x1

    .line 11
    iput-wide p3, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->bindTime:J

    .line 12
    iput-boolean p2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->needGetActiveTime:Z

    .line 13
    iput-boolean p2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->needToast:Z

    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->registerPwd:Z

    .line 15
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->tmpPhoneToken:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->a(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->getInstance(I)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->status:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    .line 18
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->b(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userId:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->f(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userName:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->g(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->avatarAddress:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->h(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->ticketToken:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->i(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->phone:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->j(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->maskedUserId:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->k(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->hasPwd:Z

    .line 25
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->l(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->bindTime:J

    .line 26
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->m(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->needGetActiveTime:Z

    .line 27
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->c(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->needToast:Z

    .line 28
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->d(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->registerPwd:Z

    .line 29
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->e(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->tmpPhoneToken:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;-><init>(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)V

    return-void
.end method

.method public static copyFrom(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->status:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    .line 8
    .line 9
    iget v1, v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->value:I

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userId:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->z(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->A(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->avatarAddress:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->n(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->ticketToken:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->x(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->phone:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->u(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->tmpPhoneToken:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->y(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->maskedUserId:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->r(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->hasPwd:Z

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->q(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-wide v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->bindTime:J

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->o(J)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->needGetActiveTime:Z

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->s(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->needToast:Z

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->t(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
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


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAvartarAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->avatarAddress:Ljava/lang/String;

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

.method public getStatus()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->status:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    .line 2
    .line 3
    iget v0, v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->value:I

    .line 4
    .line 5
    return v0
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

.method public getTicketToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->ticketToken:Ljava/lang/String;

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

.method public getUserId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userId:Ljava/lang/String;

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

.method public getUserName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userName:Ljava/lang/String;

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
    .locals 3

    .line 1
    new-instance p2, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->status:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    .line 7
    .line 8
    iget v0, v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->value:I

    .line 9
    .line 10
    const-string v1, "register_status"

    .line 11
    .line 12
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userId:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "user_id"

    .line 18
    .line 19
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userName:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "user_name"

    .line 25
    .line 26
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->avatarAddress:Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, "avatar_address"

    .line 32
    .line 33
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->ticketToken:Ljava/lang/String;

    .line 37
    .line 38
    const-string v1, "ticket_token"

    .line 39
    .line 40
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->phone:Ljava/lang/String;

    .line 44
    .line 45
    const-string v1, "phone"

    .line 46
    .line 47
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->maskedUserId:Ljava/lang/String;

    .line 51
    .line 52
    const-string v1, "masked_user_id"

    .line 53
    .line 54
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->hasPwd:Z

    .line 58
    .line 59
    const-string v1, "has_pwd"

    .line 60
    .line 61
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    iget-wide v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->bindTime:J

    .line 65
    .line 66
    const-string v2, "bind_time"

    .line 67
    .line 68
    invoke-virtual {p2, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 69
    .line 70
    .line 71
    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->needToast:Z

    .line 72
    .line 73
    const-string v1, "need_toast"

    .line 74
    .line 75
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    .line 77
    .line 78
    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->needGetActiveTime:Z

    .line 79
    .line 80
    const-string v1, "need_get_active_time"

    .line 81
    .line 82
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    .line 84
    .line 85
    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->registerPwd:Z

    .line 86
    .line 87
    const-string v1, "register_pwd"

    .line 88
    .line 89
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->tmpPhoneToken:Ljava/lang/String;

    .line 93
    .line 94
    const-string v1, "tmp_phone_token"

    .line 95
    .line 96
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 100
    .line 101
    .line 102
    return-void
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
