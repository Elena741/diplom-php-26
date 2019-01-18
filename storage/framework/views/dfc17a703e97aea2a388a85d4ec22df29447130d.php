<?php $__env->startSection('content'); ?>
	<div class="container">
		<?php $__env->startComponent('admin.components.breadcrumb'); ?>
		<?php $__env->slot('title'); ?> Список вопросов без ответов <?php $__env->endSlot(); ?>
		<?php $__env->slot('parent'); ?> Главная <?php $__env->endSlot(); ?>
		<?php $__env->slot('active'); ?> Вопросы без ответов  <?php $__env->endSlot(); ?>
		<?php echo $__env->renderComponent(); ?>

		<hr>
		<a href="<?php echo e(route('admin.question.create')); ?>" class="btn btn-primary pull-right">Создать вопрос</a>
		<table class="table table-striped">
			<thead>
				<th class="w5">Имя</th>
				<th class="w15">Email</th>
				<th class="w25">Вопрос</th>
				<th class="w25">Ответ</th>
				<th class="w15">Статус</th>
				<th class="w15">Категория</th>
				<th class="text-right">Действие</th>
			</thead>
			<tbody>


				<?php $__empty_1 = true; $__currentLoopData = $questions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $question): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
					<tr>
						<td class="border"><?php echo e($question->name); ?></td>
						<td class="border"><?php echo e($question->email); ?></td>
						<td class="border"><?php echo e($question->description); ?></td>
						<td class="border"><?php echo e($question->answer); ?></td>
						<td class="border">
							<?php if($question->published == 0): ?> <?php echo e('Не опубликовано'); ?>

							<?php elseif($question->published == 1): ?> <?php echo e('Опубликовано'); ?>

							<?php elseif($question->published == 2): ?> <?php echo e('Скрыто'); ?>

							<?php endif; ?>
						</td>
						<td class="border"><?php echo e($question->category->title); ?></td>
						<td class="text-center border">
							<form onsubmit="if (confirm('Удалить?')) {return true} else {return false}" action="<?php echo e(route('admin.question.destroy', $question)); ?>" method="post">
								<input type="hidden" name="_method" value="DELETE">
								<?php echo e(csrf_field()); ?>


							<a class="btn btn-default" href="<?php echo e(route('admin.question.edit', $question)); ?>"><i class="fa fa-edit"></i></a>	

								<button type="submit" class="btn"><i class="fa fa-trash-o"></i></button>
							</form>
							
						</td>
					</tr>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
					<tr>
						<td colspan="3" class="text-center"><h2>Данных нет</h2></td>
					</tr>
				<?php endif; ?>
			</tbody>
			<?php echo e($questions->render()); ?>

		</table>
		
	</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.layouts.app_admin', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>