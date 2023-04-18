import { Button, Col, Container, Modal, Row } from "react-bootstrap"
import { FormProvider, useForm } from "react-hook-form"
import { PageHeader } from "../../common/PageHeader"
import { yupResolver } from '@hookform/resolvers/yup'
import * as yup from "yup"
import { yupSchema } from "./yupSchema"
import { useState } from "react"
import { useAddItemMutation } from "../../api/itemEndpoints"
import { ElementTags } from "../../common/element-tags/ElementTags"
import { ElementBadges } from "../../common/element-badges/ElementBadges"
import { updateItem } from "../../common/itemSlice"
import { MacroNutrients } from "../../common/macro-nutrients/MacroNutrients"
import { Minerals } from "../../common/minerals/Minerals"
import { AllTagsList } from "../../common/tags/all-tags-list/AllTagsList"
import { Vitamins } from "../../common/vitamins/Vitamins"
import { Tag } from "../../interfaces/Tag"
import { emptyState } from "./emptyState"
import { useNavigate } from "react-router-dom"
import { useTranslation } from "react-i18next"


export const NewItem = () => {
  const { t, i18n } = useTranslation();
const [addItem, { error: cordaError, isLoading }] = useAddItemMutation()

const dets = emptyState
const schema = yupSchema

const [tagIt, setTagIt] = useState(false)

const [itemTags, setItemTags] = useState<Tag[]>(dets.tag)

console.log("det tags are")
console.log(dets.tag)

const navigate = useNavigate();


const onSubmit = async (data: any) => {  
   // console.log(data)
   // console.log(itemTags)

    data.tag = itemTags

   // console.log(data)

    addItem(data)
    .unwrap()
    .then((payload) =>{ 
      
      console.log('fulfilled', payload)
      navigate('/ingredients')
    })
    .catch((error) => console.error('rejected', error))  
}

const handleTagClick = (tag:Tag) => {
    console.log('tagClick')
    
    
  setItemTags([...itemTags, tag])
  console.log(itemTags)
}

const methods= useForm({
defaultValues: dets,
// resetOptions: {
//   keepDirtyValues: true
// }
resolver: yupResolver(schema)

}) 
return(
  <>
  <FormProvider {...methods}>
  <form  onSubmit={methods.handleSubmit(onSubmit)}>
  <Row>
      <Col xs={{span: 12}}  lg={{span: 4}} >
      <div className="form-group mt-2 mb-1">
              <label >{t('common.productNameEn')}</label>
              <input {...methods.register('itemName')} type="text" className="form-control" id="name"  placeholder="Enter item name" />
              <small id="emailHelp" className="form-text text-danger"><>{methods.formState.errors.itemName?.message}</></small>
          </div>
          <div className="form-group mt-2 mb-1">
              <label >{t('common.productNameSl')}</label>
              <input {...methods.register('itemNameSl')} type="text" className="form-control" id="name"  placeholder="Enter item name" />
              <small id="emailHelp" className="form-text text-danger"><>{methods.formState.errors.itemNameSl?.message}</></small>
          </div>

          <div className="form-group mt-2 mb-1">
              <label >{t('common.processing')}</label>
              <select defaultValue="default"
               {...methods.register('processing')} className="form-select" aria-label="Default select example">
                  <option value="default" disabled>{t('processing.default')}</option>
                  <option value="raw">{t('processing.raw')}</option>
                  <option value="light">{t('processing.light')}</option>
                  <option value="processed">{t('processing.processed')}</option>
                  <option value="home">{t('processing.home')}</option>
                  </select>
              <small id="emailHelp" className="form-text text-danger"><>{methods.formState.errors.itemNameSl?.message}</></small>
          </div>

 <MacroNutrients per="100g" />
      </Col>

      <Col xs={{span: 12}}  lg={{span: 4}} >
      <Vitamins per="100g"/>

      </Col>

      <Col xs={{span: 12}}  lg={{span: 4}} >
      <h5 className="mt-4 mb-3">{t('common.tags')}</h5>

      <ElementBadges badges={itemTags}/>

      <Button 
             onClick={()=>{
            
              setTagIt(true)
          }}
          variant="warning">{t('common.changeTags')}</Button>

      <Minerals per="100g" />
      <button type="submit" className="btn btn-primary mt-2">{t('common.submit')}</button>
      </Col>
  </Row>
  </form>
  </FormProvider>


  <Modal  show={tagIt} onHide={() => setTagIt(false)}>
  <Modal.Header closeButton>
 <ElementTags itemTags={itemTags} setItemTags={setItemTags}  />
  </Modal.Header>
  <Modal.Body>
  <AllTagsList itemTags={itemTags} setItemTags={setItemTags} handleTagClick={handleTagClick}/>
   
  
    
    </Modal.Body>

</Modal>
  </>
)
}