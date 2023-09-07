.class public Lcom/xiaomi/passport/ui/page/g;
.super Lcom/xiaomi/passport/ui/page/BaseLoginFragment;
.source "VerifyCodeLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/ui/page/g$f;,
        Lcom/xiaomi/passport/ui/page/g$d;,
        Lcom/xiaomi/passport/ui/page/g$e;,
        Lcom/xiaomi/passport/ui/page/g$g;
    }
.end annotation


# instance fields
.field private D:Lj6/h;

.field private E:Lj6/d;

.field private F:Lj6/c;

.field private G:Lj6/f;

.field private final j:Ljava/lang/String;

.field private k:J

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Landroid/os/CountDownTimer;

.field private p:Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Lcom/xiaomi/passport/uicontroller/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/passport/uicontroller/a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/xiaomi/passport/uicontroller/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/passport/uicontroller/a<",
            "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/xiaomi/passport/uicontroller/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/passport/uicontroller/a<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/xiaomi/passport/uicontroller/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/passport/uicontroller/a<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "restore_time"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/xiaomi/passport/ui/page/g;->j:Ljava/lang/String;

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/xiaomi/passport/ui/page/g;->k:J

    .line 11
    .line 12
    return-void
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

.method static synthetic A(Lcom/xiaomi/passport/ui/page/g;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/ui/page/g;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
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

.method static synthetic B(Lcom/xiaomi/passport/ui/page/g;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/page/g;->R(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic C(Lcom/xiaomi/passport/ui/page/g;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/page/g;->Q(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic D(Lcom/xiaomi/passport/ui/page/g;)Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/ui/page/g;->p:Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;

    .line 2
    .line 3
    return-object p0
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

.method static synthetic E(Lcom/xiaomi/passport/ui/page/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/passport/ui/page/g;->m:I

    .line 2
    .line 3
    return p0
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

.method static synthetic F(Lcom/xiaomi/passport/ui/page/g;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/ui/page/g;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
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

.method static synthetic G(Lcom/xiaomi/passport/ui/page/g;)Lj6/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/ui/page/g;->E:Lj6/d;

    .line 2
    .line 3
    return-object p0
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

.method static synthetic H(Lcom/xiaomi/passport/ui/page/g;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/passport/ui/page/g;->k:J

    .line 2
    .line 3
    return-wide v0
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

.method static synthetic I(Lcom/xiaomi/passport/ui/page/g;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/passport/ui/page/g;->k:J

    .line 2
    .line 3
    return-wide p1
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic J(Lcom/xiaomi/passport/ui/page/g;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/ui/page/g;->v:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
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

.method static synthetic K(Lcom/xiaomi/passport/ui/page/g;)Landroid/os/CountDownTimer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/ui/page/g;->o:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    return-object p0
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

.method static synthetic L(Lcom/xiaomi/passport/ui/page/g;)Lcom/xiaomi/passport/uicontroller/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/ui/page/g;->w:Lcom/xiaomi/passport/uicontroller/a;

    .line 2
    .line 3
    return-object p0
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

.method static synthetic M(Lcom/xiaomi/passport/ui/page/g;Lcom/xiaomi/passport/uicontroller/a;)Lcom/xiaomi/passport/uicontroller/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/g;->w:Lcom/xiaomi/passport/uicontroller/a;

    .line 2
    .line 3
    return-object p1
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method static synthetic N(Lcom/xiaomi/passport/ui/page/g;)Lj6/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/ui/page/g;->D:Lj6/h;

    .line 2
    .line 3
    return-object p0
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

.method private O(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/page/a;->i()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "phone_account"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/xiaomi/passport/ui/data/PhoneAccount;

    .line 12
    .line 13
    const-string v2, "extra_ticket_type"

    .line 14
    .line 15
    const-string v3, "sms"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iput-object v2, p0, Lcom/xiaomi/passport/ui/page/g;->n:Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "extra_phone"

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iput-object v2, p0, Lcom/xiaomi/passport/ui/page/g;->l:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, "extra_build_country_info"

    .line 32
    .line 33
    const/16 v3, 0x56

    .line 34
    .line 35
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iput v2, p0, Lcom/xiaomi/passport/ui/page/g;->m:I

    .line 40
    .line 41
    const-string v2, "spte_is_from_pass_through_error_jump"

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    iget-object v4, p0, Lcom/xiaomi/passport/ui/page/g;->l:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v4}, Lb7/p;->f(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {v4}, Lb7/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget v4, p0, Lcom/xiaomi/passport/ui/page/g;->m:I

    .line 62
    .line 63
    iget-object v5, p0, Lcom/xiaomi/passport/ui/page/g;->l:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v5}, Lb7/p;->f(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v4, v5}, Lb7/g;->d(ILjava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-static {v4}, Lb7/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    :goto_0
    iget-object v5, p0, Lcom/xiaomi/passport/ui/page/g;->n:Ljava/lang/String;

    .line 78
    .line 79
    const-string v6, "whatsapp"

    .line 80
    .line 81
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    const/4 v6, 0x1

    .line 86
    if-eqz v5, :cond_1

    .line 87
    .line 88
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/g;->q:Landroid/widget/TextView;

    .line 89
    .line 90
    sget v5, Ln5/g;->Z0:I

    .line 91
    .line 92
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    new-array v6, v6, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object v4, v6, v3

    .line 99
    .line 100
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_1
    if-eqz v1, :cond_2

    .line 113
    .line 114
    iget-object v4, p0, Lcom/xiaomi/passport/ui/page/g;->q:Landroid/widget/TextView;

    .line 115
    .line 116
    iget-object v5, v1, Lcom/xiaomi/passport/ui/data/PhoneAccount;->registerUserInfo:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    .line 117
    .line 118
    iget-object v5, v5, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->phone:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v5}, Lb7/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v1, Lcom/xiaomi/passport/ui/data/PhoneAccount;->accountCertification:Lcom/xiaomi/phonenum/data/AccountCertification;

    .line 128
    .line 129
    iget-object v1, v1, Lcom/xiaomi/phonenum/data/AccountCertification;->hashedPhoneNumber:Ljava/lang/String;

    .line 130
    .line 131
    iput-object v1, p0, Lcom/xiaomi/passport/ui/page/g;->l:Ljava/lang/String;

    .line 132
    .line 133
    iput v3, p0, Lcom/xiaomi/passport/ui/page/g;->m:I

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/g;->q:Landroid/widget/TextView;

    .line 137
    .line 138
    sget v5, Ln5/g;->C0:I

    .line 139
    .line 140
    new-array v6, v6, [Ljava/lang/Object;

    .line 141
    .line 142
    aput-object v4, v6, v3

    .line 143
    .line 144
    invoke-virtual {p0, v5, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    :goto_1
    const/4 v1, 0x6

    .line 152
    const-string v3, "verify_code_length"

    .line 153
    .line 154
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-lez v0, :cond_5

    .line 159
    .line 160
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/g;->p:Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;

    .line 161
    .line 162
    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->setVerifyCodeLength(I)V

    .line 163
    .line 164
    .line 165
    const-wide/32 v0, 0xea60

    .line 166
    .line 167
    .line 168
    iput-wide v0, p0, Lcom/xiaomi/passport/ui/page/g;->k:J

    .line 169
    .line 170
    if-eqz p1, :cond_3

    .line 171
    .line 172
    const-string v0, "restore_time"

    .line 173
    .line 174
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 175
    .line 176
    .line 177
    move-result-wide v0

    .line 178
    iput-wide v0, p0, Lcom/xiaomi/passport/ui/page/g;->k:J

    .line 179
    .line 180
    :cond_3
    new-instance p1, Lcom/xiaomi/passport/ui/page/g$b;

    .line 181
    .line 182
    iget-wide v5, p0, Lcom/xiaomi/passport/ui/page/g;->k:J

    .line 183
    .line 184
    const-wide/16 v7, 0x3e8

    .line 185
    .line 186
    move-object v3, p1

    .line 187
    move-object v4, p0

    .line 188
    invoke-direct/range {v3 .. v8}, Lcom/xiaomi/passport/ui/page/g$b;-><init>(Lcom/xiaomi/passport/ui/page/g;JJ)V

    .line 189
    .line 190
    .line 191
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/g;->o:Landroid/os/CountDownTimer;

    .line 192
    .line 193
    if-eqz v2, :cond_4

    .line 194
    .line 195
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/page/g;->T()V

    .line 196
    .line 197
    .line 198
    :cond_4
    return-void

    .line 199
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 200
    .line 201
    const-string v0, "verify code length need > 0"

    .line 202
    .line 203
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p1
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

.method private P(Landroid/view/View;)V
    .locals 2

    .line 1
    sget v0, Ln5/e;->l0:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/xiaomi/passport/ui/page/g;->v:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g;->v:Landroid/widget/TextView;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 18
    .line 19
    .line 20
    sget v0, Ln5/e;->u0:I

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/TextView;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/xiaomi/passport/ui/page/g;->q:Landroid/widget/TextView;

    .line 29
    .line 30
    sget v0, Ln5/e;->h:I

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/xiaomi/passport/ui/page/g;->r:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    sget v0, Ln5/e;->I0:I

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/g;->p:Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;

    .line 52
    .line 53
    new-instance v0, Lcom/xiaomi/passport/ui/page/g$a;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/page/g$a;-><init>(Lcom/xiaomi/passport/ui/page/g;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/ui/view/VerifyCodeEditText;->setInputCompleteListener(Lcom/xiaomi/passport/ui/view/VerifyCodeEditText$c;)V

    .line 59
    .line 60
    .line 61
    return-void
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method private Q(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 2
    .line 3
    sget v1, Ln5/g;->D:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, La7/b;->n(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g;->y:Lcom/xiaomi/passport/uicontroller/a;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/uicontroller/a;->cancel(Z)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->f:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/xiaomi/passport/ui/page/g;->l:Ljava/lang/String;

    .line 23
    .line 24
    iget v0, p0, Lcom/xiaomi/passport/ui/page/g;->m:I

    .line 25
    .line 26
    invoke-static {v0}, Lb7/g;->b(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    iget-object v7, p0, Lcom/xiaomi/passport/ui/page/g;->F:Lj6/c;

    .line 31
    .line 32
    move-object v6, p1

    .line 33
    invoke-static/range {v2 .. v7}, Lz6/c;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lj6/c;)Lcom/xiaomi/passport/uicontroller/a;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/g;->y:Lcom/xiaomi/passport/uicontroller/a;

    .line 38
    .line 39
    return-void
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
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
.end method

.method private R(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 2
    .line 3
    sget v1, Ln5/g;->E:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, La7/b;->n(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g;->z:Lcom/xiaomi/passport/uicontroller/a;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/uicontroller/a;->cancel(Z)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->f:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/g;->l:Ljava/lang/String;

    .line 19
    .line 20
    iget v2, p0, Lcom/xiaomi/passport/ui/page/g;->m:I

    .line 21
    .line 22
    invoke-static {v2}, Lb7/g;->b(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, p0, Lcom/xiaomi/passport/ui/page/g;->G:Lj6/f;

    .line 27
    .line 28
    invoke-static {v0, v1, v2, p1, v3}, Lz6/c;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lj6/f;)Lcom/xiaomi/passport/uicontroller/a;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/g;->z:Lcom/xiaomi/passport/uicontroller/a;

    .line 33
    .line 34
    return-void
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
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
.end method

.method private S()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g;->o:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g;->w:Lcom/xiaomi/passport/uicontroller/a;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/uicontroller/a;->cancel(Z)Z

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/xiaomi/passport/ui/page/g;->w:Lcom/xiaomi/passport/uicontroller/a;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g;->x:Lcom/xiaomi/passport/uicontroller/a;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/uicontroller/a;->cancel(Z)Z

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/xiaomi/passport/ui/page/g;->x:Lcom/xiaomi/passport/uicontroller/a;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g;->y:Lcom/xiaomi/passport/uicontroller/a;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/uicontroller/a;->cancel(Z)Z

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/xiaomi/passport/ui/page/g;->y:Lcom/xiaomi/passport/uicontroller/a;

    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g;->z:Lcom/xiaomi/passport/uicontroller/a;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/uicontroller/a;->cancel(Z)Z

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/xiaomi/passport/ui/page/g;->z:Lcom/xiaomi/passport/uicontroller/a;

    .line 43
    .line 44
    :cond_3
    return-void
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
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

.method private T()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 2
    .line 3
    sget v1, Ln5/g;->H:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, La7/b;->n(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g;->w:Lcom/xiaomi/passport/uicontroller/a;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/uicontroller/a;->cancel(Z)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->f:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/xiaomi/passport/ui/page/g;->l:Ljava/lang/String;

    .line 23
    .line 24
    iget v0, p0, Lcom/xiaomi/passport/ui/page/g;->m:I

    .line 25
    .line 26
    invoke-static {v0}, Lb7/g;->b(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    iget-object v6, p0, Lcom/xiaomi/passport/ui/page/g;->n:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    iget-object v9, p0, Lcom/xiaomi/passport/ui/page/g;->D:Lj6/h;

    .line 35
    .line 36
    invoke-static/range {v2 .. v9}, Lz6/c;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls6/g;Ls6/s;Lj6/h;)Lcom/xiaomi/passport/uicontroller/a;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/xiaomi/passport/ui/page/g;->w:Lcom/xiaomi/passport/uicontroller/a;

    .line 41
    .line 42
    return-void
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
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

.method private n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g;->o:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->i:Lcom/xiaomi/passport/ui/page/c;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-interface {v0, v1}, Lcom/xiaomi/passport/ui/page/c;->e(Z)V

    .line 10
    .line 11
    .line 12
    return-void
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

.method static synthetic y(Lcom/xiaomi/passport/ui/page/g;)Lcom/xiaomi/passport/uicontroller/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/ui/page/g;->x:Lcom/xiaomi/passport/uicontroller/a;

    .line 2
    .line 3
    return-object p0
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

.method static synthetic z(Lcom/xiaomi/passport/ui/page/g;Lcom/xiaomi/passport/uicontroller/a;)Lcom/xiaomi/passport/uicontroller/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/g;->x:Lcom/xiaomi/passport/uicontroller/a;

    .line 2
    .line 3
    return-object p1
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/page/g;->O(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/page/g;->n()V

    .line 8
    .line 9
    .line 10
    return-void
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

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xiaomi/passport/ui/page/g$g;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/xiaomi/passport/ui/page/g$g;-><init>(Lcom/xiaomi/passport/ui/page/g;Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/xiaomi/passport/ui/page/g;->D:Lj6/h;

    .line 10
    .line 11
    new-instance v0, Lcom/xiaomi/passport/ui/page/g$e;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/xiaomi/passport/ui/page/g$e;-><init>(Lcom/xiaomi/passport/ui/page/g;Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/xiaomi/passport/ui/page/g;->E:Lj6/d;

    .line 17
    .line 18
    new-instance v0, Lcom/xiaomi/passport/ui/page/g$d;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1}, Lcom/xiaomi/passport/ui/page/g$d;-><init>(Lcom/xiaomi/passport/ui/page/g;Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/xiaomi/passport/ui/page/g;->F:Lj6/c;

    .line 24
    .line 25
    new-instance v0, Lcom/xiaomi/passport/ui/page/g$f;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->f:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1, v1}, Lcom/xiaomi/passport/ui/page/g$f;-><init>(Lcom/xiaomi/passport/ui/page/g;Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/xiaomi/passport/ui/page/g;->G:Lj6/f;

    .line 33
    .line 34
    return-void
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
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
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g;->r:Landroid/widget/TextView;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lz6/e;->c(Landroid/content/Context;)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g;->v:Landroid/widget/TextView;

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/page/g;->T()V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
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
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Ln5/f;->m:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/page/g;->P(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-object p1
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
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
.end method

.method public onDestroyView()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/page/g;->S()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->onDestroyView()V

    .line 5
    .line 6
    .line 7
    return-void
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

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/xiaomi/passport/ui/page/g;->k:J

    .line 5
    .line 6
    const-string v2, "restore_time"

    .line 7
    .line 8
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 9
    .line 10
    .line 11
    return-void
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
