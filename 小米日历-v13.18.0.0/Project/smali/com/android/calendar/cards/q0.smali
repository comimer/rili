.class public final synthetic Lcom/android/calendar/cards/q0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/android/calendar/cards/r0;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/android/calendar/cards/r0$b;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/android/calendar/cards/r0;Landroid/content/Context;Lcom/android/calendar/cards/r0$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/cards/q0;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/android/calendar/cards/q0;->b:Lcom/android/calendar/cards/r0;

    iput-object p3, p0, Lcom/android/calendar/cards/q0;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/calendar/cards/q0;->d:Lcom/android/calendar/cards/r0$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/calendar/cards/q0;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/android/calendar/cards/q0;->b:Lcom/android/calendar/cards/r0;

    iget-object v2, p0, Lcom/android/calendar/cards/q0;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/calendar/cards/q0;->d:Lcom/android/calendar/cards/r0$b;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/calendar/cards/r0;->e(Ljava/util/List;Lcom/android/calendar/cards/r0;Landroid/content/Context;Lcom/android/calendar/cards/r0$b;Landroid/view/View;)V

    return-void
.end method
