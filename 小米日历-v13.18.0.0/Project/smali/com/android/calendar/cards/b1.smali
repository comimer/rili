.class public final synthetic Lcom/android/calendar/cards/b1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/android/calendar/cards/d1$a;

.field public final synthetic c:Lcom/android/calendar/cards/d1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/calendar/cards/d1$a;Lcom/android/calendar/cards/d1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/cards/b1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/calendar/cards/b1;->b:Lcom/android/calendar/cards/d1$a;

    iput-object p3, p0, Lcom/android/calendar/cards/b1;->c:Lcom/android/calendar/cards/d1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/cards/b1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/cards/b1;->b:Lcom/android/calendar/cards/d1$a;

    iget-object v2, p0, Lcom/android/calendar/cards/b1;->c:Lcom/android/calendar/cards/d1;

    invoke-static {v0, v1, v2, p1}, Lcom/android/calendar/cards/d1;->f(Landroid/content/Context;Lcom/android/calendar/cards/d1$a;Lcom/android/calendar/cards/d1;Landroid/view/View;)V

    return-void
.end method
