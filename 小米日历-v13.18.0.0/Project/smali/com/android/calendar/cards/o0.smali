.class public final synthetic Lcom/android/calendar/cards/o0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:Lcom/android/calendar/cards/p0;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Lcom/android/calendar/cards/p0$a;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JLcom/android/calendar/cards/p0;IILandroid/content/Context;Lcom/android/calendar/cards/p0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/cards/o0;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/calendar/cards/o0;->b:J

    iput-object p4, p0, Lcom/android/calendar/cards/o0;->c:Lcom/android/calendar/cards/p0;

    iput p5, p0, Lcom/android/calendar/cards/o0;->d:I

    iput p6, p0, Lcom/android/calendar/cards/o0;->e:I

    iput-object p7, p0, Lcom/android/calendar/cards/o0;->f:Landroid/content/Context;

    iput-object p8, p0, Lcom/android/calendar/cards/o0;->g:Lcom/android/calendar/cards/p0$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/android/calendar/cards/o0;->a:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/calendar/cards/o0;->b:J

    iget-object v3, p0, Lcom/android/calendar/cards/o0;->c:Lcom/android/calendar/cards/p0;

    iget v4, p0, Lcom/android/calendar/cards/o0;->d:I

    iget v5, p0, Lcom/android/calendar/cards/o0;->e:I

    iget-object v6, p0, Lcom/android/calendar/cards/o0;->f:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/calendar/cards/o0;->g:Lcom/android/calendar/cards/p0$a;

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/android/calendar/cards/p0;->f(Ljava/lang/String;JLcom/android/calendar/cards/p0;IILandroid/content/Context;Lcom/android/calendar/cards/p0$a;Landroid/view/View;)V

    return-void
.end method
