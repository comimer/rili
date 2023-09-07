.class Lcom/xiaomi/passport/ui/page/g$a;
.super Ljava/lang/Object;
.source "VerifyCodeLoginFragment.java"

# interfaces
.implements Lcom/xiaomi/passport/ui/view/VerifyCodeEditText$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/page/g;->P(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/ui/page/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/page/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/g$a;->a:Lcom/xiaomi/passport/ui/page/g;

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
.method public a(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$a;->a:Lcom/xiaomi/passport/ui/page/g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 4
    .line 5
    sget v1, Ln5/g;->H:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, La7/b;->n(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$a;->a:Lcom/xiaomi/passport/ui/page/g;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/xiaomi/passport/ui/page/g;->y(Lcom/xiaomi/passport/ui/page/g;)Lcom/xiaomi/passport/uicontroller/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$a;->a:Lcom/xiaomi/passport/ui/page/g;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/xiaomi/passport/ui/page/g;->y(Lcom/xiaomi/passport/ui/page/g;)Lcom/xiaomi/passport/uicontroller/a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/uicontroller/a;->cancel(Z)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/g$a;->a:Lcom/xiaomi/passport/ui/page/g;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/xiaomi/passport/ui/page/g$a;->a:Lcom/xiaomi/passport/ui/page/g;

    .line 35
    .line 36
    iget-object v3, v2, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->f:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v2}, Lcom/xiaomi/passport/ui/page/g;->A(Lcom/xiaomi/passport/ui/page/g;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget-object v2, p0, Lcom/xiaomi/passport/ui/page/g$a;->a:Lcom/xiaomi/passport/ui/page/g;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/xiaomi/passport/ui/page/g;->E(Lcom/xiaomi/passport/ui/page/g;)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-static {v2}, Lb7/g;->b(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    iget-object v2, p0, Lcom/xiaomi/passport/ui/page/g$a;->a:Lcom/xiaomi/passport/ui/page/g;

    .line 53
    .line 54
    invoke-static {v2}, Lcom/xiaomi/passport/ui/page/g;->F(Lcom/xiaomi/passport/ui/page/g;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    iget-object v2, p0, Lcom/xiaomi/passport/ui/page/g$a;->a:Lcom/xiaomi/passport/ui/page/g;

    .line 59
    .line 60
    invoke-static {v2}, Lcom/xiaomi/passport/ui/page/g;->G(Lcom/xiaomi/passport/ui/page/g;)Lj6/d;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    move-object v2, v3

    .line 65
    move-object v3, v4

    .line 66
    move-object v4, v5

    .line 67
    move-object v5, v6

    .line 68
    move-object v6, p1

    .line 69
    invoke-static/range {v1 .. v7}, Lz6/c;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj6/d;)Lcom/xiaomi/passport/uicontroller/a;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {v0, p1}, Lcom/xiaomi/passport/ui/page/g;->z(Lcom/xiaomi/passport/ui/page/g;Lcom/xiaomi/passport/uicontroller/a;)Lcom/xiaomi/passport/uicontroller/a;

    .line 74
    .line 75
    .line 76
    return-void
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
