.class final Lcom/miui/calendar/card/single/custom/HealthSingleCard$b;
.super Lcom/miui/calendar/card/single/custom/CustomSingleCard$g;
.source "HealthSingleCard.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/card/single/custom/HealthSingleCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u001b\u0008\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0011\u0008\u0000\u0012\u0006\u0010+\u001a\u00020\u0003\u00a2\u0006\u0004\u0008,\u0010-R\"\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001e\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0015\u001a\u0004\u0008\u001c\u0010\u0017\"\u0004\u0008\u001d\u0010\u0019R\"\u0010\"\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u0015\u001a\u0004\u0008 \u0010\u0017\"\u0004\u0008!\u0010\u0019R\"\u0010&\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010\r\u001a\u0004\u0008$\u0010\u000f\"\u0004\u0008%\u0010\u0011R\"\u0010*\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010\r\u001a\u0004\u0008(\u0010\u000f\"\u0004\u0008)\u0010\u0011\u00a8\u0006."
    }
    d2 = {
        "Lcom/miui/calendar/card/single/custom/HealthSingleCard$b;",
        "Lcom/miui/calendar/card/single/custom/CustomSingleCard$g;",
        "Lcom/miui/calendar/card/single/custom/CustomSingleCard;",
        "Landroid/view/View;",
        "l",
        "Landroid/view/View;",
        "a",
        "()Landroid/view/View;",
        "setHealthView1",
        "(Landroid/view/View;)V",
        "healthView1",
        "Landroid/widget/TextView;",
        "m",
        "Landroid/widget/TextView;",
        "e",
        "()Landroid/widget/TextView;",
        "setPrimaryTextView1",
        "(Landroid/widget/TextView;)V",
        "primaryTextView1",
        "Lcom/miui/calendar/view/OnlineImageView;",
        "n",
        "Lcom/miui/calendar/view/OnlineImageView;",
        "b",
        "()Lcom/miui/calendar/view/OnlineImageView;",
        "setImageView1",
        "(Lcom/miui/calendar/view/OnlineImageView;)V",
        "imageView1",
        "o",
        "c",
        "setImageView2",
        "imageView2",
        "p",
        "d",
        "setImageView3",
        "imageView3",
        "q",
        "f",
        "setPrimaryTextView2",
        "primaryTextView2",
        "r",
        "g",
        "setPrimaryTextView3",
        "primaryTextView3",
        "view",
        "<init>",
        "(Lcom/miui/calendar/card/single/custom/HealthSingleCard;Landroid/view/View;)V",
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
.field private l:Landroid/view/View;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/miui/calendar/view/OnlineImageView;

.field private o:Lcom/miui/calendar/view/OnlineImageView;

.field private p:Lcom/miui/calendar/view/OnlineImageView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field final synthetic s:Lcom/miui/calendar/card/single/custom/HealthSingleCard;


# direct methods
.method public constructor <init>(Lcom/miui/calendar/card/single/custom/HealthSingleCard;Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/HealthSingleCard$b;->s:Lcom/miui/calendar/card/single/custom/HealthSingleCard;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/miui/calendar/card/single/custom/CustomSingleCard$g;-><init>(Lcom/miui/calendar/card/single/custom/CustomSingleCard;Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    const p1, 0x7f0a02dd

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "view.findViewById(R.id.health1)"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/HealthSingleCard$b;->l:Landroid/view/View;

    .line 24
    .line 25
    const p1, 0x7f0a04a9

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "view.findViewById(R.id.primary1)"

    .line 33
    .line 34
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    check-cast p1, Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/HealthSingleCard$b;->m:Landroid/widget/TextView;

    .line 40
    .line 41
    const p1, 0x7f0a0316

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v0, "view.findViewById(R.id.image1)"

    .line 49
    .line 50
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    check-cast p1, Lcom/miui/calendar/view/OnlineImageView;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/HealthSingleCard$b;->n:Lcom/miui/calendar/view/OnlineImageView;

    .line 56
    .line 57
    const p1, 0x7f0a0317

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string v0, "view.findViewById(R.id.image2)"

    .line 65
    .line 66
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    check-cast p1, Lcom/miui/calendar/view/OnlineImageView;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/HealthSingleCard$b;->o:Lcom/miui/calendar/view/OnlineImageView;

    .line 72
    .line 73
    const p1, 0x7f0a0318

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string v0, "view.findViewById(R.id.image3)"

    .line 81
    .line 82
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    check-cast p1, Lcom/miui/calendar/view/OnlineImageView;

    .line 86
    .line 87
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/HealthSingleCard$b;->p:Lcom/miui/calendar/view/OnlineImageView;

    .line 88
    .line 89
    const p1, 0x7f0a04aa

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string v0, "view.findViewById(R.id.primary2)"

    .line 97
    .line 98
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    check-cast p1, Landroid/widget/TextView;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/HealthSingleCard$b;->q:Landroid/widget/TextView;

    .line 104
    .line 105
    const p1, 0x7f0a04ab

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    const-string p2, "view.findViewById(R.id.primary3)"

    .line 113
    .line 114
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    check-cast p1, Landroid/widget/TextView;

    .line 118
    .line 119
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/HealthSingleCard$b;->r:Landroid/widget/TextView;

    .line 120
    .line 121
    return-void
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
.method public final a()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/HealthSingleCard$b;->l:Landroid/view/View;

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

.method public final b()Lcom/miui/calendar/view/OnlineImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/HealthSingleCard$b;->n:Lcom/miui/calendar/view/OnlineImageView;

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

.method public final c()Lcom/miui/calendar/view/OnlineImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/HealthSingleCard$b;->o:Lcom/miui/calendar/view/OnlineImageView;

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

.method public final d()Lcom/miui/calendar/view/OnlineImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/HealthSingleCard$b;->p:Lcom/miui/calendar/view/OnlineImageView;

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

.method public final e()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/HealthSingleCard$b;->m:Landroid/widget/TextView;

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

.method public final f()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/HealthSingleCard$b;->q:Landroid/widget/TextView;

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

.method public final g()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/HealthSingleCard$b;->r:Landroid/widget/TextView;

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
