.class Lcom/xiaomi/passport/ui/page/b$e$a$a;
.super Ljava/lang/Object;
.source "InputPhoneNumberFragment.java"

# interfaces
.implements Lcom/xiaomi/passport/ui/page/BaseLoginFragment$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/page/b$e$a;->b(Lcom/xiaomi/verificationsdk/internal/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/ui/page/b$e$a;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/page/b$e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/b$e$a$a;->a:Lcom/xiaomi/passport/ui/page/b$e$a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
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


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b$e$a$a;->a:Lcom/xiaomi/passport/ui/page/b$e$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/b$e$a;->b:Lcom/xiaomi/passport/ui/page/b$e;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/b$e;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/page/a;->k()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b$e$a$a;->a:Lcom/xiaomi/passport/ui/page/b$e$a;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/b$e$a;->b:Lcom/xiaomi/passport/ui/page/b$e;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/b$e;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/xiaomi/passport/ui/page/b;->B(Lcom/xiaomi/passport/ui/page/b;)Lcom/xiaomi/passport/uicontroller/a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b$e$a$a;->a:Lcom/xiaomi/passport/ui/page/b$e$a;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/b$e$a;->b:Lcom/xiaomi/passport/ui/page/b$e;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/b$e;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/xiaomi/passport/ui/page/b;->B(Lcom/xiaomi/passport/ui/page/b;)Lcom/xiaomi/passport/uicontroller/a;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/uicontroller/a;->cancel(Z)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/b$e$a$a;->a:Lcom/xiaomi/passport/ui/page/b$e$a;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/b$e$a;->b:Lcom/xiaomi/passport/ui/page/b$e;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/b$e;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/xiaomi/passport/ui/page/b$e$a$a;->a:Lcom/xiaomi/passport/ui/page/b$e$a;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/xiaomi/passport/ui/page/b$e$a;->b:Lcom/xiaomi/passport/ui/page/b$e;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/xiaomi/passport/ui/page/b$e;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 55
    .line 56
    iget-object v3, v2, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->f:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v2}, Lcom/xiaomi/passport/ui/page/b;->A(Lcom/xiaomi/passport/ui/page/b;)Lcom/xiaomi/passport/ui/view/EditTextGroupView;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Lcom/xiaomi/passport/ui/view/EditTextGroupView;->getInputText()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    iget-object v2, p0, Lcom/xiaomi/passport/ui/page/b$e$a$a;->a:Lcom/xiaomi/passport/ui/page/b$e$a;

    .line 67
    .line 68
    iget-object v2, v2, Lcom/xiaomi/passport/ui/page/b$e$a;->b:Lcom/xiaomi/passport/ui/page/b$e;

    .line 69
    .line 70
    iget-object v2, v2, Lcom/xiaomi/passport/ui/page/b$e;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 71
    .line 72
    invoke-static {v2}, Lcom/xiaomi/passport/ui/page/b;->A(Lcom/xiaomi/passport/ui/page/b;)Lcom/xiaomi/passport/ui/view/EditTextGroupView;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/xiaomi/passport/ui/view/EditTextGroupView;->getCountryCode()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-static {v2}, Lb7/g;->b(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const/4 v6, 0x0

    .line 85
    new-instance v7, Ls6/g;

    .line 86
    .line 87
    invoke-direct {v7, p1, p2}, Ls6/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 p1, 0x0

    .line 91
    iget-object p2, p0, Lcom/xiaomi/passport/ui/page/b$e$a$a;->a:Lcom/xiaomi/passport/ui/page/b$e$a;

    .line 92
    .line 93
    iget-object p2, p2, Lcom/xiaomi/passport/ui/page/b$e$a;->b:Lcom/xiaomi/passport/ui/page/b$e;

    .line 94
    .line 95
    iget-object p2, p2, Lcom/xiaomi/passport/ui/page/b$e;->b:Lcom/xiaomi/passport/ui/page/b;

    .line 96
    .line 97
    invoke-static {p2}, Lcom/xiaomi/passport/ui/page/b;->D(Lcom/xiaomi/passport/ui/page/b;)Lj6/h;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    move-object v2, v3

    .line 102
    move-object v3, v4

    .line 103
    move-object v4, v5

    .line 104
    move-object v5, v6

    .line 105
    move-object v6, v7

    .line 106
    move-object v7, p1

    .line 107
    invoke-static/range {v1 .. v8}, Lz6/c;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls6/g;Ls6/s;Lj6/h;)Lcom/xiaomi/passport/uicontroller/a;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {v0, p1}, Lcom/xiaomi/passport/ui/page/b;->C(Lcom/xiaomi/passport/ui/page/b;Lcom/xiaomi/passport/uicontroller/a;)Lcom/xiaomi/passport/uicontroller/a;

    .line 112
    .line 113
    .line 114
    return-void
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
