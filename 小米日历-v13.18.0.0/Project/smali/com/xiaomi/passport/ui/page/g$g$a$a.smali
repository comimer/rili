.class Lcom/xiaomi/passport/ui/page/g$g$a$a;
.super Ljava/lang/Object;
.source "VerifyCodeLoginFragment.java"

# interfaces
.implements Lcom/xiaomi/passport/ui/page/BaseLoginFragment$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/page/g$g$a;->b(Lcom/xiaomi/verificationsdk/internal/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/ui/page/g$g$a;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/page/g$g$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/g$g$a$a;->a:Lcom/xiaomi/passport/ui/page/g$g$a;

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
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$g$a$a;->a:Lcom/xiaomi/passport/ui/page/g$g$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/g$g$a;->b:Lcom/xiaomi/passport/ui/page/g$g;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/g$g;->b:Lcom/xiaomi/passport/ui/page/g;

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
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$g$a$a;->a:Lcom/xiaomi/passport/ui/page/g$g$a;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/g$g$a;->b:Lcom/xiaomi/passport/ui/page/g$g;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/g$g;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/xiaomi/passport/ui/page/g;->L(Lcom/xiaomi/passport/ui/page/g;)Lcom/xiaomi/passport/uicontroller/a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$g$a$a;->a:Lcom/xiaomi/passport/ui/page/g$g$a;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/g$g$a;->b:Lcom/xiaomi/passport/ui/page/g$g;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/g$g;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/xiaomi/passport/ui/page/g;->L(Lcom/xiaomi/passport/ui/page/g;)Lcom/xiaomi/passport/uicontroller/a;

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
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$g$a$a;->a:Lcom/xiaomi/passport/ui/page/g$g$a;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/g$g$a;->b:Lcom/xiaomi/passport/ui/page/g$g;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/g$g;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/xiaomi/passport/ui/page/g$g$a$a;->a:Lcom/xiaomi/passport/ui/page/g$g$a;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/xiaomi/passport/ui/page/g$g$a;->b:Lcom/xiaomi/passport/ui/page/g$g;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/xiaomi/passport/ui/page/g$g;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 55
    .line 56
    iget-object v3, v2, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->f:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v2}, Lcom/xiaomi/passport/ui/page/g;->A(Lcom/xiaomi/passport/ui/page/g;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    iget-object v2, p0, Lcom/xiaomi/passport/ui/page/g$g$a$a;->a:Lcom/xiaomi/passport/ui/page/g$g$a;

    .line 63
    .line 64
    iget-object v2, v2, Lcom/xiaomi/passport/ui/page/g$g$a;->b:Lcom/xiaomi/passport/ui/page/g$g;

    .line 65
    .line 66
    iget-object v2, v2, Lcom/xiaomi/passport/ui/page/g$g;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 67
    .line 68
    invoke-static {v2}, Lcom/xiaomi/passport/ui/page/g;->E(Lcom/xiaomi/passport/ui/page/g;)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-static {v2}, Lb7/g;->b(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    iget-object v2, p0, Lcom/xiaomi/passport/ui/page/g$g$a$a;->a:Lcom/xiaomi/passport/ui/page/g$g$a;

    .line 77
    .line 78
    iget-object v2, v2, Lcom/xiaomi/passport/ui/page/g$g$a;->b:Lcom/xiaomi/passport/ui/page/g$g;

    .line 79
    .line 80
    iget-object v2, v2, Lcom/xiaomi/passport/ui/page/g$g;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 81
    .line 82
    invoke-static {v2}, Lcom/xiaomi/passport/ui/page/g;->F(Lcom/xiaomi/passport/ui/page/g;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    new-instance v7, Ls6/g;

    .line 87
    .line 88
    invoke-direct {v7, p1, p2}, Ls6/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const/4 p1, 0x0

    .line 92
    iget-object p2, p0, Lcom/xiaomi/passport/ui/page/g$g$a$a;->a:Lcom/xiaomi/passport/ui/page/g$g$a;

    .line 93
    .line 94
    iget-object p2, p2, Lcom/xiaomi/passport/ui/page/g$g$a;->b:Lcom/xiaomi/passport/ui/page/g$g;

    .line 95
    .line 96
    iget-object p2, p2, Lcom/xiaomi/passport/ui/page/g$g;->b:Lcom/xiaomi/passport/ui/page/g;

    .line 97
    .line 98
    invoke-static {p2}, Lcom/xiaomi/passport/ui/page/g;->N(Lcom/xiaomi/passport/ui/page/g;)Lj6/h;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    move-object v2, v3

    .line 103
    move-object v3, v4

    .line 104
    move-object v4, v5

    .line 105
    move-object v5, v6

    .line 106
    move-object v6, v7

    .line 107
    move-object v7, p1

    .line 108
    invoke-static/range {v1 .. v8}, Lz6/c;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls6/g;Ls6/s;Lj6/h;)Lcom/xiaomi/passport/uicontroller/a;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {v0, p1}, Lcom/xiaomi/passport/ui/page/g;->M(Lcom/xiaomi/passport/ui/page/g;Lcom/xiaomi/passport/uicontroller/a;)Lcom/xiaomi/passport/uicontroller/a;

    .line 113
    .line 114
    .line 115
    return-void
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
