.class public final Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;
.super Ljava/lang/Object;
.source "GuestAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_CALL_BACK:Ljava/lang/String; = "callback"

.field private static final KEY_CUSER_ID:Ljava/lang/String; = "cuserid"

.field private static final KEY_PASS_TOKEN:Ljava/lang/String; = "passtoken"

.field private static final KEY_PH:Ljava/lang/String; = "ph"

.field private static final KEY_SECURITY:Ljava/lang/String; = "security"

.field private static final KEY_SERVICE_TOKEN:Ljava/lang/String; = "servicetoken"

.field private static final KEY_SID:Ljava/lang/String; = "sid"

.field private static final KEY_SLH:Ljava/lang/String; = "slh"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_USER_ID:Ljava/lang/String; = "userid"


# instance fields
.field public final cUserId:Ljava/lang/String;

.field public final callback:Ljava/lang/String;

.field public final passToken:Ljava/lang/String;

.field public final ph:Ljava/lang/String;

.field public final security:Ljava/lang/String;

.field public final serviceToken:Ljava/lang/String;

.field public final sid:Ljava/lang/String;

.field public final slh:Ljava/lang/String;

.field public final type:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

.field public final userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "userid"

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    const-string v0, "cuserid"

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->cUserId:Ljava/lang/String;

    const-string v0, "sid"

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->sid:Ljava/lang/String;

    const-string v0, "servicetoken"

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->serviceToken:Ljava/lang/String;

    const-string v0, "security"

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->security:Ljava/lang/String;

    const-string v0, "passtoken"

    .line 20
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->passToken:Ljava/lang/String;

    const-string v0, "callback"

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->callback:Ljava/lang/String;

    const-string v0, "slh"

    .line 22
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->slh:Ljava/lang/String;

    const-string v0, "ph"

    .line 23
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->ph:Ljava/lang/String;

    const-string v0, "type"

    .line 24
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;->getFromServerValue(I)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->type:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->a(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->b(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->cUserId:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->c(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->sid:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->d(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->serviceToken:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->e(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->security:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->f(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->passToken:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->g(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->callback:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->h(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->slh:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->i(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->ph:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->j(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->type:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;-><init>(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;)V

    return-void
.end method


# virtual methods
.method public copyWithNewType(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->sid:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->r(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->u(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->cUserId:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->l(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->passToken:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->n(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->serviceToken:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->q(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->security:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->p(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->callback:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->m(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->slh:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->s(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->ph:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->o(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->t(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->k()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1
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

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    :goto_0
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->cUserId:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v1, :cond_4

    .line 34
    .line 35
    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->cUserId:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_5

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_4
    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->cUserId:Ljava/lang/String;

    .line 45
    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    :goto_1
    return v2

    .line 49
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->sid:Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v1, :cond_6

    .line 52
    .line 53
    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->sid:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_7

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_6
    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->sid:Ljava/lang/String;

    .line 63
    .line 64
    if-eqz v1, :cond_7

    .line 65
    .line 66
    :goto_2
    return v2

    .line 67
    :cond_7
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->serviceToken:Ljava/lang/String;

    .line 68
    .line 69
    if-eqz v1, :cond_8

    .line 70
    .line 71
    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->serviceToken:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_9

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_8
    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->serviceToken:Ljava/lang/String;

    .line 81
    .line 82
    if-eqz v1, :cond_9

    .line 83
    .line 84
    :goto_3
    return v2

    .line 85
    :cond_9
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->security:Ljava/lang/String;

    .line 86
    .line 87
    if-eqz v1, :cond_a

    .line 88
    .line 89
    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->security:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_b

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_a
    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->security:Ljava/lang/String;

    .line 99
    .line 100
    if-eqz v1, :cond_b

    .line 101
    .line 102
    :goto_4
    return v2

    .line 103
    :cond_b
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->passToken:Ljava/lang/String;

    .line 104
    .line 105
    if-eqz v1, :cond_c

    .line 106
    .line 107
    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->passToken:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_d

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_c
    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->passToken:Ljava/lang/String;

    .line 117
    .line 118
    if-eqz v1, :cond_d

    .line 119
    .line 120
    :goto_5
    return v2

    .line 121
    :cond_d
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->callback:Ljava/lang/String;

    .line 122
    .line 123
    if-eqz v1, :cond_e

    .line 124
    .line 125
    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->callback:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_f

    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_e
    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->callback:Ljava/lang/String;

    .line 135
    .line 136
    if-eqz v1, :cond_f

    .line 137
    .line 138
    :goto_6
    return v2

    .line 139
    :cond_f
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->slh:Ljava/lang/String;

    .line 140
    .line 141
    if-eqz v1, :cond_10

    .line 142
    .line 143
    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->slh:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_11

    .line 150
    .line 151
    goto :goto_7

    .line 152
    :cond_10
    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->slh:Ljava/lang/String;

    .line 153
    .line 154
    if-eqz v1, :cond_11

    .line 155
    .line 156
    :goto_7
    return v2

    .line 157
    :cond_11
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->ph:Ljava/lang/String;

    .line 158
    .line 159
    if-eqz v1, :cond_12

    .line 160
    .line 161
    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->ph:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-nez v1, :cond_13

    .line 168
    .line 169
    goto :goto_8

    .line 170
    :cond_12
    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->ph:Ljava/lang/String;

    .line 171
    .line 172
    if-eqz v1, :cond_13

    .line 173
    .line 174
    :goto_8
    return v2

    .line 175
    :cond_13
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->type:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    .line 176
    .line 177
    iget-object p1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->type:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    .line 178
    .line 179
    if-ne v1, p1, :cond_14

    .line 180
    .line 181
    goto :goto_9

    .line 182
    :cond_14
    move v0, v2

    .line 183
    :goto_9
    return v0
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->cUserId:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v2, v1

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->sid:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move v2, v1

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->serviceToken:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    move v2, v1

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->security:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    goto :goto_4

    .line 62
    :cond_4
    move v2, v1

    .line 63
    :goto_4
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->passToken:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v2, :cond_5

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    goto :goto_5

    .line 75
    :cond_5
    move v2, v1

    .line 76
    :goto_5
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->callback:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz v2, :cond_6

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    goto :goto_6

    .line 88
    :cond_6
    move v2, v1

    .line 89
    :goto_6
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->slh:Ljava/lang/String;

    .line 93
    .line 94
    if-eqz v2, :cond_7

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    goto :goto_7

    .line 101
    :cond_7
    move v2, v1

    .line 102
    :goto_7
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    .line 104
    .line 105
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->ph:Ljava/lang/String;

    .line 106
    .line 107
    if-eqz v2, :cond_8

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    goto :goto_8

    .line 114
    :cond_8
    move v2, v1

    .line 115
    :goto_8
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    .line 117
    .line 118
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->type:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    .line 119
    .line 120
    if-eqz v2, :cond_9

    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    :cond_9
    add-int/2addr v0, v1

    .line 127
    return v0
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
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method public maskPassToken()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->sid:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->r(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->u(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->cUserId:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->l(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->n(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->serviceToken:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->q(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->security:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->p(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->callback:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->m(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->slh:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->s(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->ph:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->o(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->type:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->t(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$b;->k()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    return-object v0
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "GuestAccount{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "userId=\'"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x27

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    const-string v2, "cUserId=\'"

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->cUserId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    const-string v2, ", sid=\'"

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->sid:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 47
    .line 48
    .line 49
    const-string v2, ", serviceToken=\'"

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->serviceToken:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    .line 61
    .line 62
    const-string v2, ", security=\'"

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->security:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    .line 74
    .line 75
    const-string v2, ", passToken=\'"

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    .line 79
    .line 80
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->passToken:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    .line 87
    .line 88
    const-string v2, ", callback=\'"

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->callback:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    .line 100
    .line 101
    const-string v2, ", slh=\'"

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->slh:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 112
    .line 113
    .line 114
    const-string v2, ", ph=\'"

    .line 115
    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    .line 118
    .line 119
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->ph:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    .line 126
    .line 127
    const-string v1, ", type="

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->type:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 135
    .line 136
    .line 137
    const/16 v1, 0x7d

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    return-object v0
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
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
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
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "userid"

    .line 9
    .line 10
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->cUserId:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "cuserid"

    .line 16
    .line 17
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->sid:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "sid"

    .line 23
    .line 24
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->serviceToken:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "servicetoken"

    .line 30
    .line 31
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->security:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "security"

    .line 37
    .line 38
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->passToken:Ljava/lang/String;

    .line 42
    .line 43
    const-string v1, "passtoken"

    .line 44
    .line 45
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->callback:Ljava/lang/String;

    .line 49
    .line 50
    const-string v1, "callback"

    .line 51
    .line 52
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->slh:Ljava/lang/String;

    .line 56
    .line 57
    const-string v1, "slh"

    .line 58
    .line 59
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->ph:Ljava/lang/String;

    .line 63
    .line 64
    const-string v1, "ph"

    .line 65
    .line 66
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->type:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    .line 70
    .line 71
    if-nez v0, :cond_0

    .line 72
    .line 73
    const/4 v0, -0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget v0, v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;->serverValue:I

    .line 76
    .line 77
    :goto_0
    const-string v1, "type"

    .line 78
    .line 79
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 83
    .line 84
    .line 85
    return-void
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
