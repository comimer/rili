.class Lcom/xiaomi/passport/ui/page/d$b$a;
.super Ljava/lang/Object;
.source "PasswordLoginFragment.java"

# interfaces
.implements Lcom/xiaomi/passport/ui/page/BaseLoginFragment$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/page/d$b;->e(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/ui/page/d$b;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/page/d$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/d$b$a;->a:Lcom/xiaomi/passport/ui/page/d$b;

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
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/d$b$a;->a:Lcom/xiaomi/passport/ui/page/d$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/page/a;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/d$b$a;->a:Lcom/xiaomi/passport/ui/page/d$b;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->b:La7/b;

    .line 17
    .line 18
    sget v1, Ln5/g;->D:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, La7/b;->n(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/d$b$a;->a:Lcom/xiaomi/passport/ui/page/d$b;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/xiaomi/passport/ui/page/d;->A(Lcom/xiaomi/passport/ui/page/d;)Lcom/xiaomi/passport/uicontroller/a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/d$b$a;->a:Lcom/xiaomi/passport/ui/page/d$b;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/xiaomi/passport/ui/page/d;->A(Lcom/xiaomi/passport/ui/page/d;)Lcom/xiaomi/passport/uicontroller/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/uicontroller/a;->cancel(Z)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/page/d$b$a;->a:Lcom/xiaomi/passport/ui/page/d$b;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/xiaomi/passport/ui/page/d$b$a;->a:Lcom/xiaomi/passport/ui/page/d$b;

    .line 54
    .line 55
    iget-object v2, v2, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 56
    .line 57
    invoke-static {v2}, Lcom/xiaomi/passport/ui/page/d;->C(Lcom/xiaomi/passport/ui/page/d;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget-object v3, p0, Lcom/xiaomi/passport/ui/page/d$b$a;->a:Lcom/xiaomi/passport/ui/page/d$b;

    .line 62
    .line 63
    iget-object v3, v3, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 64
    .line 65
    invoke-static {v3}, Lcom/xiaomi/passport/ui/page/d;->D(Lcom/xiaomi/passport/ui/page/d;)Lcom/xiaomi/passport/ui/view/EditTextGroupView;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lcom/xiaomi/passport/ui/view/EditTextGroupView;->getInputText()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iget-object v4, p0, Lcom/xiaomi/passport/ui/page/d$b$a;->a:Lcom/xiaomi/passport/ui/page/d$b;

    .line 74
    .line 75
    iget-object v4, v4, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 76
    .line 77
    invoke-static {v4}, Lcom/xiaomi/passport/ui/page/d;->E(Lcom/xiaomi/passport/ui/page/d;)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-nez v4, :cond_2

    .line 82
    .line 83
    const-string v4, ""

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    iget-object v4, p0, Lcom/xiaomi/passport/ui/page/d$b$a;->a:Lcom/xiaomi/passport/ui/page/d$b;

    .line 87
    .line 88
    iget-object v4, v4, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 89
    .line 90
    invoke-static {v4}, Lcom/xiaomi/passport/ui/page/d;->E(Lcom/xiaomi/passport/ui/page/d;)I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    invoke-static {v4}, Lb7/g;->b(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    :goto_0
    iget-object v5, p0, Lcom/xiaomi/passport/ui/page/d$b$a;->a:Lcom/xiaomi/passport/ui/page/d$b;

    .line 99
    .line 100
    iget-object v5, v5, Lcom/xiaomi/passport/ui/page/d$b;->b:Lcom/xiaomi/passport/ui/page/d;

    .line 101
    .line 102
    iget-object v6, v5, Lcom/xiaomi/passport/ui/page/BaseLoginFragment;->f:Ljava/lang/String;

    .line 103
    .line 104
    new-instance v8, Lcom/xiaomi/passport/ui/page/d$b;

    .line 105
    .line 106
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    const/4 v9, 0x0

    .line 111
    invoke-direct {v8, v5, v7, v9}, Lcom/xiaomi/passport/ui/page/d$b;-><init>(Lcom/xiaomi/passport/ui/page/d;Landroid/content/Context;Lcom/xiaomi/passport/ui/page/d$a;)V

    .line 112
    .line 113
    .line 114
    move-object v5, v6

    .line 115
    move-object v6, p1

    .line 116
    move-object v7, p2

    .line 117
    invoke-static/range {v1 .. v8}, Lz6/c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj6/a;)Lcom/xiaomi/passport/uicontroller/a;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {v0, p1}, Lcom/xiaomi/passport/ui/page/d;->B(Lcom/xiaomi/passport/ui/page/d;Lcom/xiaomi/passport/uicontroller/a;)Lcom/xiaomi/passport/uicontroller/a;

    .line 122
    .line 123
    .line 124
    return-void
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
