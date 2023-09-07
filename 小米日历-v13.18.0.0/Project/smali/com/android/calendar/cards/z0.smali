.class public final synthetic Lcom/android/calendar/cards/z0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/card/schema/CustomCardItemSchema;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/android/calendar/cards/a1$b;

.field public final synthetic d:Lcom/android/calendar/cards/a1;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/card/schema/CustomCardItemSchema;Landroid/content/Context;Lcom/android/calendar/cards/a1$b;Lcom/android/calendar/cards/a1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/cards/z0;->a:Lcom/miui/calendar/card/schema/CustomCardItemSchema;

    iput-object p2, p0, Lcom/android/calendar/cards/z0;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/calendar/cards/z0;->c:Lcom/android/calendar/cards/a1$b;

    iput-object p4, p0, Lcom/android/calendar/cards/z0;->d:Lcom/android/calendar/cards/a1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/calendar/cards/z0;->a:Lcom/miui/calendar/card/schema/CustomCardItemSchema;

    iget-object v1, p0, Lcom/android/calendar/cards/z0;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/cards/z0;->c:Lcom/android/calendar/cards/a1$b;

    iget-object v3, p0, Lcom/android/calendar/cards/z0;->d:Lcom/android/calendar/cards/a1;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/calendar/cards/a1;->f(Lcom/miui/calendar/card/schema/CustomCardItemSchema;Landroid/content/Context;Lcom/android/calendar/cards/a1$b;Lcom/android/calendar/cards/a1;Landroid/view/View;)V

    return-void
.end method
