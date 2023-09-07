.class public abstract Lcom/xiaomi/passport/ui/page/BaseLoginFragment;
.super Lcom/xiaomi/passport/ui/page/a;
.source "BaseLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/ui/page/BaseLoginFragment$i;,
        Lcom/xiaomi/passport/ui/page/BaseLoginFragment$h;,
        Lcom/xiaomi/passport/ui/page/BaseLoginFragment$LoginFragmentType;
    }
.end annotation


# instance fields
.field private a:Lm7/a;

.field protected b:La7/b;

.field protected c:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;

.field protected d:Z

.field protected e:Z

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field private h:Lr6/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr6/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Lcom/xiaomi/passport/ui/page/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/page/a;-><init>()V

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
.end method

.method private n()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->t(Z)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->e:Z

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->t(Z)V

    .line 13
    .line 14
    .line 15
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private o()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/page/a;->i()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "service_id"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->f:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "banner_biz"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->g:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v1, La7/b;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v1, v2}, La7/b;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-virtual {v1, v2}, La7/b;->f(Z)La7/b;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 37
    .line 38
    sget v3, Ln5/g;->H:I

    .line 39
    .line 40
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v1, v3}, La7/b;->h(Ljava/lang/String;)La7/b;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Lm7/a;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-direct {v1, v4}, Lm7/a;-><init>(Landroid/app/Activity;)V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->a:Lm7/a;

    .line 63
    .line 64
    const-string v4, "https://verify.sec.xiaomi.com"

    .line 65
    .line 66
    invoke-virtual {v1, v4}, Lm7/a;->p0(Ljava/lang/String;)Lm7/a;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->a:Lm7/a;

    .line 70
    .line 71
    const-string v4, "8027422fb0eb42fbac1b521ec4a7961f"

    .line 72
    .line 73
    invoke-virtual {v1, v4}, Lm7/a;->r0(Ljava/lang/String;)Lm7/a;

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->a:Lm7/a;

    .line 77
    .line 78
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {v1, v4}, Lm7/a;->q0(Ljava/lang/Boolean;)Lm7/a;

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->a:Lm7/a;

    .line 84
    .line 85
    invoke-virtual {v1}, Lm7/a;->k0()V

    .line 86
    .line 87
    .line 88
    const-string v1, "login_agreement_and_privacy"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;

    .line 95
    .line 96
    iput-object v1, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->c:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;

    .line 97
    .line 98
    if-nez v1, :cond_0

    .line 99
    .line 100
    new-instance v1, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$b;

    .line 101
    .line 102
    sget-object v4, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;->DEF:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;

    .line 103
    .line 104
    invoke-direct {v1, v4}, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$b;-><init>(Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$b;->a()Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iput-object v1, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->c:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;

    .line 112
    .line 113
    :cond_0
    const-string v1, "show_user_agreement"

    .line 114
    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    iput-boolean v1, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->d:Z

    .line 120
    .line 121
    const-string v1, "user_agreement_init_selected"

    .line 122
    .line 123
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    iput-boolean v0, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->e:Z

    .line 128
    .line 129
    return-void
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

.method public static q(Landroid/os/Bundle;Lcom/xiaomi/passport/ui/page/BaseLoginFragment$LoginFragmentType;)Lcom/xiaomi/passport/ui/page/BaseLoginFragment;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment$g;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p1, "unsupported fragment type"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :pswitch_0
    new-instance p1, Lcom/xiaomi/passport/ui/page/f;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/xiaomi/passport/ui/page/f;-><init>()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_1
    new-instance p1, Lv6/b;

    .line 27
    .line 28
    invoke-direct {p1}, Lv6/b;-><init>()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_2
    new-instance p1, Lcom/xiaomi/passport/ui/page/e;

    .line 33
    .line 34
    invoke-direct {p1}, Lcom/xiaomi/passport/ui/page/e;-><init>()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_3
    new-instance p1, Lcom/xiaomi/passport/ui/page/b;

    .line 39
    .line 40
    invoke-direct {p1}, Lcom/xiaomi/passport/ui/page/b;-><init>()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_4
    new-instance p1, Lcom/xiaomi/passport/ui/page/d;

    .line 45
    .line 46
    invoke-direct {p1}, Lcom/xiaomi/passport/ui/page/d;-><init>()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_5
    new-instance p1, Lcom/xiaomi/passport/ui/page/g;

    .line 51
    .line 52
    invoke-direct {p1}, Lcom/xiaomi/passport/ui/page/g;-><init>()V

    .line 53
    .line 54
    .line 55
    :goto_0
    if-eqz p0, :cond_0

    .line 56
    .line 57
    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-object p1

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

.method private s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 2
    .line 3
    invoke-virtual {v0}, La7/b;->dismiss()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->h:Lr6/a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lr6/a;->a()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->h:Lr6/a;

    .line 15
    .line 16
    :cond_0
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->o()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->n()V

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
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lcom/xiaomi/passport/ui/page/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lcom/xiaomi/passport/ui/page/c;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->i:Lcom/xiaomi/passport/ui/page/c;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v0, "the context must be a impl of LoginUIController!"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
    .line 21
    .line 22
.end method

.method public onDestroyView()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->s()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

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

.method public p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->u(Landroid/view/View$OnClickListener;)V

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
.end method

.method public t(Z)V
    .locals 0

    return-void
.end method

.method protected u(Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 1
    new-instance v0, La7/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, La7/b;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sget v1, Ln5/g;->x:I

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, La7/b;->l(Ljava/lang/String;)La7/b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget v1, Ln5/g;->v:I

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Lcom/xiaomi/passport/ui/page/BaseLoginFragment$a;

    .line 27
    .line 28
    invoke-direct {v2, p0, p1}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment$a;-><init>(Lcom/xiaomi/passport/ui/page/BaseLoginFragment;Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, La7/b;->k(Ljava/lang/String;Landroid/view/View$OnClickListener;)La7/b;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/high16 v0, 0x1040000

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p1, v0, v1}, La7/b;->i(Ljava/lang/String;Landroid/view/View$OnClickListener;)La7/b;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->m()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, La7/b;->h(Ljava/lang/String;)La7/b;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, La7/b;->show()V

    .line 55
    .line 56
    .line 57
    return-void
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method protected v(Ljava/lang/String;Lcom/xiaomi/passport/ui/page/BaseLoginFragment$h;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Ln5/f;->u:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget v1, Ln5/e;->i:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/xiaomi/passport/ui/view/EditTextGroupView;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    sget-object v3, Lcom/xiaomi/accountsdk/account/XMPassport;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v1, p1}, Lcom/xiaomi/passport/ui/view/EditTextGroupView;->setupCaptcha(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance p1, La7/b;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-direct {p1, v2}, La7/b;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    sget v2, Ln5/g;->C:I

    .line 50
    .line 51
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {p1, v2}, La7/b;->l(Ljava/lang/String;)La7/b;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2, v0}, La7/b;->m(Landroid/view/View;)La7/b;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const v2, 0x104000a

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    new-instance v3, Lcom/xiaomi/passport/ui/page/BaseLoginFragment$b;

    .line 71
    .line 72
    invoke-direct {v3, p0, p2, v1}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment$b;-><init>(Lcom/xiaomi/passport/ui/page/BaseLoginFragment;Lcom/xiaomi/passport/ui/page/BaseLoginFragment$h;Lcom/xiaomi/passport/ui/view/EditTextGroupView;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2, v3}, La7/b;->k(Ljava/lang/String;Landroid/view/View$OnClickListener;)La7/b;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, La7/b;->show()V

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

.method protected w(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/passport/ui/page/BaseLoginFragment$i;)V
    .locals 8

    .line 1
    sget v0, Ln5/f;->r:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    sget v0, Ln5/e;->C0:I

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/TextView;

    .line 15
    .line 16
    sget v2, Ln5/g;->I:I

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    new-array v4, v3, [Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v5, p3, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    iget-object v5, p3, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->maskedUserId:Ljava/lang/String;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v5, p3, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userName:Ljava/lang/String;

    .line 33
    .line 34
    :goto_0
    const/4 v6, 0x0

    .line 35
    aput-object v5, v4, v6

    .line 36
    .line 37
    invoke-virtual {p0, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    sget v4, Ln5/g;->J:I

    .line 42
    .line 43
    new-array v5, v3, [Ljava/lang/Object;

    .line 44
    .line 45
    iget-object v7, p3, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->phone:Ljava/lang/String;

    .line 46
    .line 47
    aput-object v7, v5, v6

    .line 48
    .line 49
    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const/4 v5, 0x2

    .line 54
    new-array v5, v5, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object v2, v5, v6

    .line 57
    .line 58
    aput-object v4, v5, v3

    .line 59
    .line 60
    const-string v2, "%s\n%s"

    .line 61
    .line 62
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p3, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->avatarAddress:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->h:Lr6/a;

    .line 78
    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    invoke-virtual {v0}, Lr6/a;->a()V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->h:Lr6/a;

    .line 85
    .line 86
    :cond_1
    new-instance v0, Lr6/a;

    .line 87
    .line 88
    new-instance v2, Lcom/xiaomi/passport/ui/page/BaseLoginFragment$c;

    .line 89
    .line 90
    invoke-direct {v2, p0, p3}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment$c;-><init>(Lcom/xiaomi/passport/ui/page/BaseLoginFragment;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    .line 91
    .line 92
    .line 93
    new-instance p3, Lcom/xiaomi/passport/ui/page/BaseLoginFragment$d;

    .line 94
    .line 95
    invoke-direct {p3, p0, p2}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment$d;-><init>(Lcom/xiaomi/passport/ui/page/BaseLoginFragment;Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    invoke-direct {v0, v2, p3, v1}, Lr6/a;-><init>(Lr6/a$a;Lr6/a$d;Lr6/a$b;)V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->h:Lr6/a;

    .line 102
    .line 103
    invoke-virtual {v0}, Lr6/a;->c()V

    .line 104
    .line 105
    .line 106
    :cond_2
    new-instance p3, La7/b;

    .line 107
    .line 108
    invoke-direct {p3, p1}, La7/b;-><init>(Landroid/content/Context;)V

    .line 109
    .line 110
    .line 111
    sget p1, Ln5/g;->G:I

    .line 112
    .line 113
    invoke-virtual {p3, p1}, La7/b;->setTitle(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3, p2}, La7/b;->m(Landroid/view/View;)La7/b;

    .line 117
    .line 118
    .line 119
    sget p1, Ln5/g;->K:I

    .line 120
    .line 121
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    new-instance p2, Lcom/xiaomi/passport/ui/page/BaseLoginFragment$e;

    .line 126
    .line 127
    invoke-direct {p2, p0, p4}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment$e;-><init>(Lcom/xiaomi/passport/ui/page/BaseLoginFragment;Lcom/xiaomi/passport/ui/page/BaseLoginFragment$i;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3, p1, p2}, La7/b;->i(Ljava/lang/String;Landroid/view/View$OnClickListener;)La7/b;

    .line 131
    .line 132
    .line 133
    sget p1, Ln5/g;->F:I

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    new-instance p2, Lcom/xiaomi/passport/ui/page/BaseLoginFragment$f;

    .line 140
    .line 141
    invoke-direct {p2, p0, p4}, Lcom/xiaomi/passport/ui/page/BaseLoginFragment$f;-><init>(Lcom/xiaomi/passport/ui/page/BaseLoginFragment;Lcom/xiaomi/passport/ui/page/BaseLoginFragment$i;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3, p1, p2}, La7/b;->k(Ljava/lang/String;Landroid/view/View$OnClickListener;)La7/b;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3}, La7/b;->show()V

    .line 148
    .line 149
    .line 150
    return-void
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

.method protected x(Ljava/lang/String;Lm7/a$o;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->a:Lm7/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm7/a;->o0(Ljava/lang/String;)Lm7/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lm7/a;->s0(Lm7/a$o;)Lm7/a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lm7/a;->y0()V

    .line 12
    .line 13
    .line 14
    return-void
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
