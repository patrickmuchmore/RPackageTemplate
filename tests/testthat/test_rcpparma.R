context("rcpparma functions")

test_that("rcpparma_hello_world is diagonal matrix of sevens", {
            expect_identical(rcpparma_hello_world(), 7*diag(3))
        })

test_that("functions with a vector argument give correct results", {
            testVector = c(1, 2, 3)
            outerProduct = testVector %*% t(testVector)
            innerProduct = as.numeric(testVector %*% testVector)
            expect_identical(rcpparma_outerproduct(testVector), outerProduct)
            expect_identical(rcpparma_innerproduct(testVector), innerProduct)
            expect_identical(rcpparma_bothproducts(testVector), list(outer=outerProduct, inner=innerProduct))
        })
