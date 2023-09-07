.class final Lcom/miui/calendar/card/single/local/c$b;
.super Ls3/a$a;
.source "AgendaGroupSingleCard.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/card/single/local/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0011\u0008\u0000\u0012\u0006\u0010\u0015\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\u0008\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u000e\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0014\u001a\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/miui/calendar/card/single/local/c$b;",
        "Ls3/a$a;",
        "Ls3/a;",
        "Landroid/view/View;",
        "e",
        "Landroid/view/View;",
        "c",
        "()Landroid/view/View;",
        "rootView",
        "Landroid/widget/TextView;",
        "f",
        "Landroid/widget/TextView;",
        "b",
        "()Landroid/widget/TextView;",
        "noEventsView",
        "Lcom/miui/calendar/view/DynamicLinearLayout;",
        "g",
        "Lcom/miui/calendar/view/DynamicLinearLayout;",
        "a",
        "()Lcom/miui/calendar/view/DynamicLinearLayout;",
        "containerView",
        "view",
        "<init>",
        "(Lcom/miui/calendar/card/single/local/c;Landroid/view/View;)V",
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
.field private final e:Landroid/view/View;

.field private final f:Landroid/widget/TextView;

.field private final g:Lcom/miui/calendar/view/DynamicLinearLayout;

.field final synthetic h:Lcom/miui/calendar/card/single/local/c;


# direct methods
.method public constructor <init>(Lcom/miui/calendar/card/single/local/c;Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/miui/calendar/card/single/local/c$b;->h:Lcom/miui/calendar/card/single/local/c;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Ls3/a$a;-><init>(Ls3/a;Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/miui/calendar/card/single/local/c$b;->e:Landroid/view/View;

    .line 12
    .line 13
    const p1, 0x7f0a0442

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "view.findViewById(R.id.no_events)"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    check-cast p1, Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/miui/calendar/card/single/local/c$b;->f:Landroid/widget/TextView;

    .line 28
    .line 29
    const p1, 0x7f0a019f

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string p2, "view.findViewById(R.id.container)"

    .line 37
    .line 38
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    check-cast p1, Lcom/miui/calendar/view/DynamicLinearLayout;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/miui/calendar/card/single/local/c$b;->g:Lcom/miui/calendar/view/DynamicLinearLayout;

    .line 44
    .line 45
    return-void
    .line 46
    .line 47
.end method


# virtual methods
.method public final a()Lcom/miui/calendar/view/DynamicLinearLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/local/c$b;->g:Lcom/miui/calendar/view/DynamicLinearLayout;

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

.method public final b()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/local/c$b;->f:Landroid/widget/TextView;

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

.method public final c()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/local/c$b;->e:Landroid/view/View;

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
