.class public final synthetic Lcom/miui/calendar/card/single/local/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/card/single/local/i;

.field public final synthetic b:I

.field public final synthetic c:Lcom/android/calendar/common/ModuleSchema;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/card/single/local/i;ILcom/android/calendar/common/ModuleSchema;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/card/single/local/g;->a:Lcom/miui/calendar/card/single/local/i;

    iput p2, p0, Lcom/miui/calendar/card/single/local/g;->b:I

    iput-object p3, p0, Lcom/miui/calendar/card/single/local/g;->c:Lcom/android/calendar/common/ModuleSchema;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/calendar/card/single/local/g;->a:Lcom/miui/calendar/card/single/local/i;

    iget v1, p0, Lcom/miui/calendar/card/single/local/g;->b:I

    iget-object v2, p0, Lcom/miui/calendar/card/single/local/g;->c:Lcom/android/calendar/common/ModuleSchema;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/calendar/card/single/local/i;->u(Lcom/miui/calendar/card/single/local/i;ILcom/android/calendar/common/ModuleSchema;Landroid/view/View;)V

    return-void
.end method
