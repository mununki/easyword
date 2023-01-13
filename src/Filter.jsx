import { Menu, Transition } from '@headlessui/react'
import { Fragment } from 'react'
import { ChevronDownIcon, ArrowDownIcon, ArrowUpIcon } from '@heroicons/react/20/solid'

function Filter_(props) {
  return (
    <Menu as="div" className="relative inline-block text-left">
      <div>
        <Menu.Button className="inline-flex w-full justify-center rounded-md bg-black bg-opacity-20 px-4 py-2 text-sm font-medium text-white hover:bg-opacity-30 focus:outline-none focus-visible:ring-2 focus-visible:ring-white focus-visible:ring-opacity-75">
          {props.order[1] ?
            <ArrowUpIcon
              className="-ml-2 mr-1 h-5 w-5 text-teal-200 hover:text-teal-100"
              aria-hidden="true"
            />
            : <ArrowDownIcon
              className="-ml-2 mr-1 h-5 w-5 text-teal-200 hover:text-teal-100"
              aria-hidden="true"
            />}
          {props.order[0] ? '영한' : '한영'}
          <ChevronDownIcon
            className="ml-2 -mr-1 h-5 w-5 text-teal-200 hover:text-teal-100"
            aria-hidden="true"
          />
        </Menu.Button>
      </div>
      <Transition
        as={Fragment}
        enter="transition ease-out duration-100"
        enterFrom="transform opacity-0 scale-95"
        enterTo="transform opacity-100 scale-100"
        leave="transition ease-in duration-75"
        leaveFrom="transform opacity-100 scale-100"
        leaveTo="transform opacity-0 scale-95"
      >
        <Menu.Items className="absolute right-0 mt-2 w-full origin-top-right divide-y divide-gray-100 rounded-md bg-white shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none">
          <div className="px-1 py-1">
            <Menu.Item>
              {({ active }) => (
                <button
                  onClick={() => {
                    props.setOrder(order => [order[0], props.order[0] ? true : !order[1]])
                    props.setOrder(order => [false, order[1]])

                  }}
                  className={`${active ? 'bg-teal-500 text-white' : 'text-gray-900'
                    } group flex w-full items-center rounded-md px-2 py-2 text-sm`}
                >
                  한영
                  {props.order[0] ? <></> : props.order[1] ? <ArrowUpIcon
                    className="flex-0 ml-1 h-5 w-5 text-teal-200 hover:text-teal-100"
                    aria-hidden="true"
                  /> : <ArrowDownIcon
                    className="flex-0 ml-1 h-5 w-5 text-teal-200 hover:text-teal-100"
                    aria-hidden="true" />}
                </button>
              )}
            </Menu.Item>
            <Menu.Item>
              {({ active }) => (
                <button
                  onClick={() => {
                    props.setOrder(order => [order[0], props.order[0] ? !order[1] : true])
                    props.setOrder(order => [true, order[1]])

                  }}
                  className={`${active ? 'bg-teal-500 text-white' : 'text-gray-900'
                    } group flex w-full items-center rounded-md px-2 py-2 text-sm`}
                >
                  영한
                  {props.order[0] ? (props.order[1] ? <ArrowUpIcon
                    className="flex-0 ml-1 h-5 w-5 text-teal-200 hover:text-teal-100"
                    aria-hidden="true"
                  /> : <ArrowDownIcon
                    className="flex-0 ml-1 h-5 w-5 text-teal-200 hover:text-teal-100"
                    aria-hidden="true" />) : <></>}
                </button>
              )}
            </Menu.Item>
          </div>
        </Menu.Items>
      </Transition>
    </Menu>
  )
}

export { Filter_ }