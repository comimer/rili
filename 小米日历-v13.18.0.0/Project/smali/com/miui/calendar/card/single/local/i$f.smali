.class final Lcom/miui/calendar/card/single/local/i$f;
.super Ls3/a$a;
.source "HolidaySingleCard.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/card/single/local/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u000f\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\"\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/miui/calendar/card/single/local/i$f;",
        "Ls3/a$a;",
        "Ls3/a;",
        "Landroid/widget/LinearLayout;",
        "e",
        "Landroid/widget/LinearLayout;",
        "getRoot",
        "()Landroid/widget/LinearLayout;",
        "setRoot",
        "(Landroid/widget/LinearLayout;)V",
        "root",
        "Lcom/miui/calendar/view/DynamicLinearLayout;",
        "f",
        "Lcom/miui/calendar/view/DynamicLinearLayout;",
        "b",
        "()Lcom/miui/calendar/view/DynamicLinearLayout;",
        "setListContainerView",
        "(Lcom/miui/calendar/view/DynamicLinearLayout;)V",
        "listContainerView",
        "Lcom/miui/calendar/card/single/local/i$b;",
        "g",
        "Lcom/miui/calendar/card/single/local/i$b;",
        "a",
        "()Lcom/miui/calendar/card/single/local/i$b;",
        "setButtonsViewHolder",
        "(Lcom/miui/calendar/card/single/local/i$b;)V",
        "buttonsViewHolder",
        "Landroid/view/View;",
        "view",
        "<init>",
        "(Lcom/miui/calendar/card/single/local/i;Landroid/view/View;)V",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private e:Landroid/widget/LinearLayout;

.field private f:Lcom/miui/calendar/view/DynamicLinearLayout;

.field private g:Lcom/miui/calendar/card/single/local/i$b;

.field final synthetic h:Lcom/miui/calendar/card/single/local/i;


# direct methods
.method public constructor <init>(Lcom/miui/calendar/card/single/local/i;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/miui/calendar/card/single/local/i$f;->h:Lcom/miui/calendar/card/single/local/i;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Ls3/a$a;-><init>(Ls3/a;Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    const p1, 0x7f0a0502

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "view.findViewById(R.id.root)"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    check-cast p1, Landroid/widget/LinearLayout;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/miui/calendar/card/single/local/i$f;->e:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    const p1, 0x7f0a0383

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "null cannot be cast to non-null type com.miui.calendar.view.DynamicLinearLayout"

    .line 35
    .line 36
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    check-cast p1, Lcom/miui/calendar/view/DynamicLinearLayout;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/miui/calendar/card/single/local/i$f;->f:Lcom/miui/calendar/view/DynamicLinearLayout;

    .line 42
    .line 43
    new-instance p1, Lcom/miui/calendar/card/single/local/i$b;

    .line 44
    .line 45
    invoke-direct {p1, p2}, Lcom/miui/calendar/card/single/local/i$b;-><init>(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/miui/calendar/card/single/local/i$f;->g:Lcom/miui/calendar/card/single/local/i$b;

    .line 49
    .line 50
    return-void
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
.method public final a()Lcom/miui/calendar/card/single/local/i$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/local/i$f;->g:Lcom/miui/calendar/card/single/local/i$b;

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

.method public final b()Lcom/miui/calendar/view/DynamicLinearLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/local/i$f;->f:Lcom/miui/calendar/view/DynamicLinearLayout;

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
