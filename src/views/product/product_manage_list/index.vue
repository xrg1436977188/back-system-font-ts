<template>
  <breadCrumb ref="breadcrumb" :item='item'></breadCrumb>
  <!-- wrapper -->
  <div class="module-common-wrapped">
    <div class="module-common-content">
      <el-tabs v-model="activeName" class="demo-tabs" @tab-click="handleClick">
        <el-tab-pane label="产品列表" name="first">
          <div class="pane-content">
            <div class="pane-top">
              <div class="module-common-header">
                <div class="search-wrapped">
                  <el-input v-model="productId" class="w-50 m-2" clearable placeholder="输入入库编号进行搜索"
                            size="large" @change="searchProduct()"
                            @clear="getProductFirstPageList">
                    <template #prefix>
                      <Search/>
                    </template>
                  </el-input>
                </div>
                <div class="button-wrapped">
                  <el-button type="primary" @click="productInWarehouse">产品入库</el-button>
                </div>
              </div>
              <!-- 表格部分 -->
              <div class="module-common-table">
                <el-table :data="tableData" border style="width: 100%">
                  <el-table-column type="index" width="50"></el-table-column>
                  <el-table-column label="入库编号" prop="product_id" width="200"/>
                  <el-table-column label="产品名称" prop="product_name" width="160"/>
                  <el-table-column label="产品类别" prop="product_category" width="100"/>
                  <el-table-column label="单位" prop="product_unit"/>
                  <el-table-column label="库存数量" prop="product_in_warehouse_number" width="100"/>
                  <el-table-column label="产品单价" prop="product_single_price" width="150"/>
                  <el-table-column label="库存总价" prop="product_all_price" width="100"/>
                  <el-table-column label="库存状态" prop="product_status" width="100">
                    <template #default="{row}">
                      <el-tag v-if="row.product_in_warehouse_number<100" class="ml-2"
                              type="danger">库存较少
                      </el-tag>
                      <el-tag v-else-if="row.product_in_warehouse_number>100&&row.product_in_warehouse_number<300"
                              class="ml-2"
                              type="success">库存正常
                      </el-tag>
                      <el-tag v-else-if="row.product_in_warehouse_number>300" class="ml-2"
                              type="warning">库存过剩
                      </el-tag>
                    </template>
                  </el-table-column>
                  <el-table-column label="入库负责人" prop="product_create_person" width="100"/>
                  <el-table-column label="入库时间" prop="product_create_time" width="200">
                    <template #default="{row}">
                      <div>{{ row.product_create_time?.slice(0, 10) }}</div>
                    </template>
                  </el-table-column>
                  <el-table-column label="最后修改时间" prop="product_update_time" width="200">
                    <template #default="{row}">
                      <div>{{ row.product_update_time?.slice(0, 10) }}</div>
                    </template>
                  </el-table-column>
                  <el-table-column label="入库备注" prop="in_memo" width="200"/>
                  <el-table-column fixed="right" label="操作" width="300">
                    <template #default="{row}">
                      <div>
                        <el-button :disabled='row.product_out_status=="申请出库" || row.product_in_warehouse_number==0'
                                   type="primary"
                                   @click="applyOut(row)">
                          申请出库
                        </el-button>
                        <el-button :disabled='row.product_out_status=="申请出库"' type="success"
                                   @click="editProduct(row)">修改
                        </el-button>
                        <el-button :disabled='row.product_out_status=="申请出库"' type="danger"
                                   @click="deleteProduct(row.id)">删除
                        </el-button>
                      </div>
                    </template>
                  </el-table-column>
                </el-table>
              </div>
            </div>
            <div class="table-footer">
              <el-pagination :current-page="paginationData.productCurrentPage"
                             :page-count="paginationData.productPageCount"
                             :page-size="1" :pager-count="7"
                             :total="paginationData.productTotal" layout="prev, pager, next"
                             @current-change="productCurrentChange"/>
            </div>
          </div>
        </el-tab-pane>
        <el-tab-pane label="审核列表" name="second">
          <div class="pane-content">
            <div class="pane-top">
              <div class="module-common-header">
                <div class="search-wrapped">
                  <el-input v-model="productOutId" class="w-50 m-2" clearable placeholder="输入入库编号进行搜索"
                            size="large" @change="searchApplyProduct()"
                            @clear="getApplyProductFirstPageList">
                    <template #prefix>
                      <Search/>
                    </template>
                  </el-input>
                </div>
                <div class="button-wrapped">
                </div>
              </div>
              <!-- 表格部分 -->
              <div class="module-common-table">
                <el-table :data="applyTableData" border style="width: 100%">
                  <el-table-column type="index" width="50"></el-table-column>
                  <el-table-column label="申请出库编号" prop="product_out_id" width="200"/>
                  <el-table-column label="产品名称" prop="product_name" width="200"/>
                  <el-table-column label="申请出库数量" prop="product_out_number" width="180"/>
                  <el-table-column label="申请出库总价" prop="product_out_price" width="180"/>
                  <el-table-column label="申请人" prop="product_out_apply_person" width="100"/>
                  <el-table-column label="申请出库时间" prop="product_apply_time" width="180">
                    <template #default="{row}">
                      <div>{{ row.product_apply_time?.slice(0, 10) }}</div>
                    </template>
                  </el-table-column>
                  <el-table-column label="审核人" prop="product_out_audit_person" width="150"/>
                  <el-table-column label="审核时间" prop="product_audit_time" width="180">
                    <template #default="{row}">
                      <div>{{ row.product_audit_time?.slice(0, 10) }}</div>
                    </template>
                  </el-table-column>
                  <el-table-column label="审核状态" prop="product_out_status" width="100"/>
                  <el-table-column label="申请出库备注" prop="apply_memo" width="200"/>
                  <el-table-column label="审核备注" prop="audit_memo" width="200"/>
                  <el-table-column fixed="right" label="操作" width="300">
                    <template #default="{row}">
                      <div>
                        <el-button type="primary"
                                   @click="withdrawProduct(row.id)">撤回申请
                        </el-button>
                        <el-button :disabled='row.product_out_status=="申请出库"' type="success"
                                   @click="againApply(row)">再次申请
                        </el-button>
                        <el-button type="danger" @click="auditProduct(row)">审核</el-button>
                      </div>
                    </template>
                  </el-table-column>
                </el-table>
              </div>
            </div>
            <div class="table-footer">
              <el-pagination :current-page="paginationData.applyProductCurrentPage"
                             :page-count="paginationData.applyProductCount"
                             :page-size="1" :pager-count="7"
                             :total="paginationData.applyProductTotal"
                             layout="prev, pager, next" @current-change="applyProductCurrentChange"/>
            </div>
          </div>
        </el-tab-pane>
      </el-tabs>
    </div>
  </div>
  <!-- 入库操作影响产品列表 -->
  <warehousing ref="in_warehouse" @success='getProductFirstPageList'></warehousing>
  <!-- 申请操作影响审核列表 -->
  <apply ref="apply_product" @success='changeTwoPageList'></apply>
  <!-- 编辑操作影响产品列表 -->
  <edit ref="edit_product" @success='getProductFirstPageList'></edit>
  <!-- 删除操作影响产品列表 -->
  <remove ref="delete_product" @success='getProductFirstPageList'></remove>
  <!-- 审核操作影响产品列表、审核列表 -->
  <audit ref="audit_product" @success='changeTwoPageList'></audit>
  <!-- 撤回操作影响产品列表、审核列表 -->
  <withdraw ref="withdraw_product" @success='changeTwoPageList'></withdraw>
  <!-- 再次申请操作影响审核列表 -->
  <again ref="again_product" @success='getApplyProductFirstPageList'></again>
</template>

<script lang='ts' setup>
import {reactive, ref,} from 'vue'
import breadCrumb from '@/components/bread_crumb.vue'
import warehousing from '../components/product_in_warehouse.vue'
import apply from '../components/apply.vue'
import edit from '../components/edit_product.vue'
import remove from '../components/delete_product.vue'
import audit from '../components/audit.vue'
import withdraw from '../components/withdraw.vue'
import again from '../components/again_apply.vue'
import {
  getApplyProductLength,
  getProductLength,
  returnApplyProductListData,
  returnProductListData,
  searchProductForApplyId,
  searchProductForId,
} from '@/api/product'
import {bus} from "@/utils/mitt.js"
import {Search} from '@element-plus/icons-vue'
import type {TabsPaneContext} from 'element-plus'

// 面包屑
const breadcrumb = ref()
// 面包屑参数
const item = ref({
  first: '产品管理',
  second: '产品列表'
})
const handleClick = (tab: TabsPaneContext) => {
  if (tab.props.label == '产品列表') {
    getProductFirstPageList()
  }
  if (tab.props.label == '审核列表') {
    getApplyProductFirstPageList()
  }
}

const activeName = ref('first')

// 产品入库编号
const productId = ref<number>()
// 产品申请出库编号
const productOutId = ref<number>()
// 产品表格
const tableData = ref([])
// 产品申请出库表格
const applyTableData = ref([])

// 分页数据
const paginationData = reactive({
  // 产品总数
  productTotal: 0,
  // 产品列表总页数
  productPageCount: 0,
  // 产品列表当前所处页数
  productCurrentPage: 1,
  // 申请的总数
  applyProductTotal: 0,
  // 申请列表总页数
  applyProductCount: 0,
  // 申请列表当前所处页数
  applyProductCurrentPage: 1,
})


// 获取产品列表的页数
const getProductListLength = async () => {
  const res = await getProductLength() as any
  paginationData.productTotal = res.length
  paginationData.productPageCount = Math.ceil(res.length / 10)
}
getProductListLength()
// 获取审核列表的页数
const getApplyProductListLength = async () => {
  const res = await getApplyProductLength() as any
  paginationData.applyProductTotal = res.length
  paginationData.applyProductCount = Math.ceil(res.length / 10)
}
getApplyProductListLength()
// 默认获取产品列表第一页的数据
const getProductFirstPageList = async () => {
  tableData.value = await returnProductListData(1) as any
}
getProductFirstPageList()
// 默认获取审核列表第一页的数据
const getApplyProductFirstPageList = async () => {
  applyTableData.value = await returnApplyProductListData(1) as any
}
getApplyProductFirstPageList()

// 更新产品列表及审核列表的第一页数据
const changeTwoPageList = () => {
  getProductFirstPageList()
  getApplyProductFirstPageList()
}

// 产品列表监听换页
const productCurrentChange = async (value: number) => {
  paginationData.productCurrentPage = value
  tableData.value = await returnProductListData(paginationData.productCurrentPage) as any
}

// 申请列表监听换页
const applyProductCurrentChange = async (value: number) => {
  paginationData.applyProductCurrentPage = value
  tableData.value = await returnApplyProductListData(paginationData.applyProductCurrentPage) as any
}

// 通过产品入库ID去搜索
const searchProduct = async () => {
  tableData.value = await searchProductForId(productId.value as number) as any
}
// 通过产品申请出库ID去搜索
const searchApplyProduct = async () => {
  tableData.value = await searchProductForApplyId(productId.value as number) as any
}

// 打开产品入库
const in_warehouse = ref()
const productInWarehouse = () => {
  in_warehouse.value.open()
}

// 产品申请出库
const apply_product = ref()
const applyOut = (row: any) => {
  bus.emit('applyId', row)
  apply_product.value.open()
}

// 编辑产品信息
const edit_product = ref()
const editProduct = (row: any) => {
  bus.emit('editProductId', row)
  edit_product.value.open()
}

// 删除产品
const delete_product = ref()
const deleteProduct = (id: number) => {
  bus.emit('deleteProductId', id)
  delete_product.value.open()
}

// 审核产品
const audit_product = ref()
const auditProduct = (row: any) => {
  bus.emit('productAudit', row)
  audit_product.value.open()
}

// 撤回产品申请
const withdraw_product = ref()
const withdrawProduct = (id: number) => {
  bus.emit('withdrawId', id)
  withdraw_product.value.open()
}

// 再次申请产品出库
const again_product = ref()
const againApply = (row: any) => {
  bus.emit('againId', row)
  again_product.value.open()
}
</script>

<style lang="scss" scoped>
:deep(.el-table .cell) {
  font-weight: 400;
}
</style>
